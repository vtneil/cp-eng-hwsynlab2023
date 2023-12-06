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
    
    // Graphics Local Parameters
    localparam VGA_PIXEL_COUNT = VGA_RES_WIDTH * VGA_RES_HEIGHT;
    localparam VGA_VRAM_ADDR_BITS = $clog2(VGA_PIXEL_COUNT);
    localparam GPU_COLOR_BITS = GPU_COLOR_DEPTH * 3;
    
    // Clocks and Dividers
    // 1000 Hz (1ms) general-purpose clock
    wire clk_1ms;
    clk_div clk_1ms_div(clk_1ms, clk, 32'd100_000);
    
    // 1 Hz (1s) general-purpose clock
    wire clk_1s;
    clk_div clk_1s_div(clk_1s, clk_1ms, 32'd1_000);
    
    // 200 Hz for Display 50 Hz (4 digits)
    wire clk_disp;
    clk_div clk_disp_div(clk_disp, clk, 32'd500_000);
    
    // Input Buttons and Switches
    wire vga_rst;
    switch_button btn_vga_rst(
        .q(vga_rst),
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
    
    // LEDs
    assign led = i_sw;
    
    // Quad 7-Segment Display
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
    vga_sync main_vga_sync(
        .hsync(Hsync),
        .vsync(Vsync),
        .video_on(vga_on),
        .p_tick(vga_tick),
        .x(vga_pos_x),
        .y(vga_pos_y),
        .clk(clk),
        .reset(vga_rst)
    );
    
    // Video Memory (VRAM) ////////////////////////////////////
    // Current pixel position mapped to VRAM address
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_ra;
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_wa;
    reg vram_we;
    
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
        .we(1'b1 | vram_we)
    );
    
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
    
    // Text Renderer //////////////////////////////////////////
//    text_renderer #(
//        .GPU_COLOR_BITS(GPU_COLOR_BITS)
//    ) text_renderer_inst(
//        .pixel_data(vram_data_in),
//        .x(gpu_pos_x),
//        .y(gpu_pos_y),
//        .clk(clk),
//        .en(1'b1),
//        .render_flag(16'd0)
//    );
    
    // Game Objects Renderer //////////////////////////////////
    wire [47:0] rom_ball_line_data;
    wire [2:0] rom_ball_line [15:0];
    wire [3:0] rom_ball_line_addr;
    
    rom_block #(
        .MEM_INIT_FILE("rom_ball_texture.mem"),
        .ROM_WIDTH(48),
        .ROM_ADDR_BITS(4)
    ) rom_prog_text(
        .data(rom_ball_line_data),
        .addr(rom_ball_line_addr),
        .clk(clk),
        .en(1'b1)
    );
    
    reg [GPU_COLOR_BITS - 1:0] vin;
    assign vram_data_in = vin;
    assign rom_ball_line_addr = gpu_pos_y % 16;
    
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin
            assign rom_ball_line[i] = rom_ball_line_data[(i + 1) * 3 - 1: i * 3];
        end
    endgenerate

    always @(posedge clk) begin
        if (gpu_pos_x < 16 && gpu_pos_y < 16) begin
            vin <= rom_ball_line[gpu_pos_x % 16];
        end else begin
            vin <= 3'b011;
        end
    end
    
    // VRAM Read/Write Address ////////////////////////////////
    // Read: Direct VRAM to VGA
    // Write: Direct GPU to VRAM
    assign vram_ra = (vga_pos_y * VGA_RES_WIDTH) + vga_pos_x;
    assign vram_wa = (gpu_pos_y * VGA_RES_WIDTH) + gpu_pos_x;
    
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
            
            // Enable Tx to send somethinh.
            en_write_uart <= 1'b1;
        end
        
        // Update the temporary
        received_old <= received;
    end
    
    // Post-Assignment ////////////////////////////////////////
    
    assign {digits[1], digits[0]} = uart_data_rx;
//    assign {digits[3], digits[2]} = uart_data_tx;
endmodule
