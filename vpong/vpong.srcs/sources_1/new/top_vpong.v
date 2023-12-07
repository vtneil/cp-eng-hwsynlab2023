`timescale 1ns / 1ps

module top_vpong #(
    parameter BASE_CORE_CLOCK = 100_000_000,    // Base FPGA Clock Speed in Hz
    parameter VGA_RES_WIDTH = 640,              // VGA Resolution (Height)
    parameter VGA_RES_HEIGHT = 480,             // VGA Resolution (Width)
    parameter VGA_COLOR_DEPTH = 4,              // Color per Channel
    parameter GPU_COLOR_DEPTH = 1               // Color per Channel
) (
    output wire Hsync,
    output wire Vsync,
    output wire [VGA_COLOR_DEPTH - 1:0] vgaRed,
    output wire [VGA_COLOR_DEPTH - 1:0] vgaGreen,
    output wire [VGA_COLOR_DEPTH - 1:0] vgaBlue,
    
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    
    output wire [15:0] led,
    
    output wire RsTx,
    input wire RsRx,
    
    input wire [15:0] sw,
    input wire btnC,
    input wire clk
);
    
    `include "params.vh"
    
    // Graphics Local Parameters //////////////////////////////
    localparam VGA_PIXEL_COUNT      = VGA_RES_WIDTH * VGA_RES_HEIGHT;
    localparam VGA_VRAM_ADDR_BITS   = $clog2(VGA_PIXEL_COUNT);
    localparam GPU_COLOR_BITS       = GPU_COLOR_DEPTH * 3;
    localparam GRAPHICS_LAYERS      = 8;  // 8 layers rendering
    
    // Clocks and Dividers ////////////////////////////////////
    // 50 MHz clock
    wire clk_50mhz;
    clk_div clk_50mhz_div(clk_50mhz, clk, 32'd2);
    
    // 1000 Hz (1ms) general-purpose clock
    wire clk_1ms;
    clk_div clk_1ms_div(clk_1ms, clk, 32'd100_000);
    
    // 1 Hz (1s) general-purpose clock
    wire clk_1s;
    clk_div clk_1s_div(clk_1s, clk_1ms, 32'd1_000);
    
    // 200 Hz for Display 50 Hz (4 digits)
    wire clk_disp;
    clk_div clk_disp_div(clk_disp, clk, 32'd500_000);
    
    wire clk_render;
    assign clk_render = clk_50mhz;
    
    // Input Buttons and Switches /////////////////////////////
    wire reset;
    switch_button btn_reset(
        .q(reset),
        .d(btnC),
        .clk(clk)
    );
    
    wire [15:0] i_sw;
    switch_button #(
        .BUTTON_WIDTH(16)
    ) sw_array(
        .q(i_sw),
        .d(sw),
        .clk(clk)
    );
    
    // LEDs ///////////////////////////////////////////////////
    assign led = i_sw;
    
    // Quad 7-Segment Display /////////////////////////////////
    wire [3:0] digits [3:0];
    wire [15:0] all_digits = {digits[3], digits[2], digits[1], digits[0]};
    quad_7_seg main_display(
        .seg(seg), 
        .an(an), 
        .dp(dp), 
        .clk(clk_disp), 
        .num3(digits[3]), 
        .num2(digits[2]), 
        .num1(digits[1]), 
        .num0(digits[0])
    );
    
    // VGA Display ////////////////////////////////////////////
    reg [VGA_COLOR_DEPTH - 1:0] vga_r;
    reg [VGA_COLOR_DEPTH - 1:0] vga_g;
    reg [VGA_COLOR_DEPTH - 1:0] vga_b;
    
    initial begin
        vga_r <= 0;
        vga_g <= 0;
        vga_b <= 0;
    end
    
    wire vga_tick;
    wire vga_on;
    wire [9:0] vga_pos_x;
    wire [9:0] vga_pos_y;
    
    // VGA Synchronizer ///////////////////////////////////////
    // For 640x480 60 Hz at 25 MHz Pixel Refresh
    vga_sync main_vga_sync(
        .hsync(Hsync),
        .vsync(Vsync),
        .video_on(vga_on),
        .p_tick(vga_tick),
        .x(vga_pos_x),
        .y(vga_pos_y),
        .clk(clk),
        .reset(reset)
    );
    
    // Video Memory (VRAM) ////////////////////////////////////
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_ra;
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_wa;
    wire vram_we;
    
    wire [GPU_COLOR_BITS - 1:0] vram_data_out;
    wire [GPU_COLOR_BITS - 1:0] vram_data_in;
    
    ram_block #(
        .RAM_WIDTH(GPU_COLOR_BITS),
        .RAM_ADDR_BITS(VGA_VRAM_ADDR_BITS)
    ) main_vga_vram_buffer(
        .data_out(vram_data_out),
        .data_in(vram_data_in),
        .wa(vram_wa),
        .ra(vram_ra),
        .clk(clk),
        .we(vram_we)
    );
    
    // VRAM-VGA Pixel Mapping /////////////////////////////////
    always @(posedge vga_tick) begin
        vga_r <= (vram_data_out[2]) ? 4'hF : 4'h0;
        vga_g <= (vram_data_out[1]) ? 4'hF : 4'h0;
        vga_b <= (vram_data_out[0]) ? 4'hF : 4'h0;
    end
    
    assign {vgaRed, vgaGreen, vgaBlue} = (vga_on) ? {vga_r, vga_g, vga_b} : 12'h000;
    
    // Graphics Renderer //////////////////////////////////////
    wire [9:0] gpu_pos_x;
    wire [9:0] gpu_pos_y;
    wire gpu_rst = 0;
    
    graphics_renderer #(
        .CANVAS_WIDTH(VGA_RES_WIDTH),
        .CANVAS_HEIGHT(VGA_RES_HEIGHT)
    ) graphics_renderer_inst(
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .clk(clk),
        .reset(gpu_rst)
    );
    
    // GPU-VRAM-VGA Read/Write Address ////////////////////////
    // Read: Direct VRAM to VGA
    // Write: Direct GPU to VRAM
    assign vram_ra = (vga_pos_y * VGA_RES_WIDTH) + vga_pos_x;
    assign vram_wa = (gpu_pos_y * VGA_RES_WIDTH) + gpu_pos_x;
    
    // Graphics Layer using Priority MUX //////////////////////
    wire [(GRAPHICS_LAYERS * GPU_COLOR_BITS) - 1:0] gp_data_flatten;
    wire [GPU_COLOR_BITS - 1:0] gp_data[GRAPHICS_LAYERS - 1:0];
    wire [GRAPHICS_LAYERS - 1:0] gp_layer;
    
    assign vram_we = |gp_layer;
    
    pixel_overlay #(
        .LAYERS(GRAPHICS_LAYERS),
        .DATA_WIDTH(GPU_COLOR_BITS)
    ) overlay_inst(
        .out_data(vram_data_in),
        .data(gp_data_flatten),
        .select(gp_layer)
    );
    
    genvar i;
    generate
        for (i = 0; i < GRAPHICS_LAYERS; i = i + 1) begin
            assign gp_data_flatten[GPU_COLOR_BITS * i +: GPU_COLOR_BITS] = gp_data[i];
        end
    endgenerate
    
    // Text Renderer //////////////////////////////////////////
    text_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .VOID_COLOR(COLOR3CYAN),
        .CHAR_BASE_WIDTH(8),
        .CHAR_BASE_HEIGHT(16),
        .MAX_STRLEN(16),
        .MAX_NUM_STR(16),
        .TEXT_ROM_FILE("rom_prog_text.mem")
    ) text_renderer_inst(
        .pixel_data(gp_data[GP_TEXT_FG]),
        .pixel_on(gp_layer[GP_TEXT_FG]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(10'd0),
        .start_y(10'd0),
        .scale(3'd1),
        .fg_color(COLOR3BLUE),
        .bg_color(COLOR3CYAN),
        .transparent_bg(1'b0),
        .line_addr('d9),
        .clk(clk),
        .en(1'b1)
    );
    
    // Game Objects Renderer //////////////////////////////////
    bitmap_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .VOID_COLOR(COLOR3CYAN),
        .IMAGE_WIDTH(16),
        .IMAGE_HEIGHT(16),
        .IMAGE_ROM_FILE("rom_ball_texture.mem")
    ) ball_renderer_inst(
        .pixel_data(gp_data[GP_BALL]),
        .pixel_on(gp_layer[GP_BALL]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(10'd64),
        .start_y(10'd64),
        .scale(3'd4),
        .clk(clk),
        .en(1'b1)
    );
    
    rectangle_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .RECT_WIDTH(200),
        .RECT_HEIGHT(80)
    ) paddle1_renderer_inst(
        .pixel_data(gp_data[GP_PADDLE]),
        .pixel_on(gp_layer[GP_PADDLE]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(10'd40),
        .start_y(10'd40),
        .color(COLOR3WHITE),
        .clk(clk),
        .en(1'b1)
    );
    
    // UART Controller ////////////////////////////////////////
    wire baud;
    wire received, sent;
    wire [7:0] uart_data_rx;
    reg [7:0] uart_data_tx;
    reg en_write_uart;

    baudrate_generator #(
        .BASE_CLOCK(BASE_CORE_CLOCK),
        .BAUDRATE(9_600)
    ) main_uart_baudrate_generator(
        .baud(baud),
        .base_clk(clk)
    );
    
    uart_tx usb_rs232_tx(
        .dout(RsTx),
        .is_sent(sent),
        .din(uart_data_tx),
        .en(en_write_uart),
        .baud_clk(baud)
    );
    
    uart_rx usb_rs232_rx(
        .dout(uart_data_rx),
        .is_received(received),
        .din(RsRx),
        .baud_clk(baud)
    );

    initial begin
        en_write_uart <= 1'b0;
    end

    // Temporary: received status 0 to 1 = new data
    reg received_old;
    wire has_new_data = !received_old && received;
    always @(posedge baud) begin
        // Disable Tx
        if (en_write_uart == 1'b1) begin
            en_write_uart <= 1'b0;
        end
        
        if (has_new_data) begin
            // If received, do something.
            uart_data_tx <= uart_data_rx;
            
            // Enable Tx to send something.
            en_write_uart <= 1'b1;
        end
        
        // Update the temporary
        received_old <= received;
    end
    
    // Post-Assignment ////////////////////////////////////////
    
    assign {digits[1], digits[0]} = uart_data_rx;
//    assign {digits[3], digits[2]} = uart_data_tx;
endmodule
