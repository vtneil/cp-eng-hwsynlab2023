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
    
    // Text Generation Local Parameters
    localparam ROM_MAX_CHAR = 16;       // 16 characters per line
    localparam ROM_MAX_CHAR_BITS = 8 * ROM_MAX_CHAR;
    localparam ROM_MAX_STR = 16;        // 16 strings in text ROM
    localparam ROM_MAX_STR_ADDR = $clog2(ROM_MAX_STR);
    
    // Clocks and Dividers
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
    
    // VGA Display
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
    
    // VGA Synchronizer
    vga_sync #(
        .RES_WIDTH(VGA_RES_WIDTH),
        .RES_HEIGHT(VGA_RES_HEIGHT)
    ) main_vga_sync(
        .hsync(Hsync),
        .vsync(Vsync),
        .video_on(vga_on),
        .p_tick(vga_tick),
        .x(vga_pos_x),
        .y(vga_pos_y),
        .clk(clk),
        .reset(vga_rst)
    );
    
    // Current pixel position mapped to VRAM address
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_ra;
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_wa;
    reg vram_we;
    
    wire [GPU_COLOR_BITS - 1:0] vram_data_out;
    reg [GPU_COLOR_BITS - 1:0] vram_data_in;
    
    // Video Memory (VRAM)
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
    
    // Graphics Renderer
    wire [9:0] gpu_pos_x;
    wire [9:0] gpu_pos_y;
    wire gpu_rst = 0;
    
    graphics_renderer #(
        .CANVAS_WIDTH(VGA_RES_WIDTH),
        .CANVAS_HEIGHT(VGA_RES_HEIGHT)
    ) gpu_renderer(
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .clk(clk),
        .reset(gpu_rst)
    );
    
    // ASCII Text Generation
    wire [(8 * GPU_COLOR_BITS) - 1:0] ascii_row_out;
    wire [6:0] ascii_char;          // 7-bit ASCII character code
    wire [3:0] char_row;            // 4-bit row of ASCII character
    
    ascii_text_generator #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS)
    ) text_generator(
        .row_out(ascii_row_out),
        .ascii_char(ascii_char),
        .char_row(char_row),
        .fg(i_sw[2:0]),
        .bg(i_sw[15:13]),
        .clk(clk),
        .en(1'b1)
    );
    
    reg [ROM_MAX_CHAR_BITS - 1:0] rom_text_line_data;
    reg [ROM_MAX_STR_ADDR - 1:0] rom_text_line_addr;
    
    rom_block_hex #(
        .MEM_INIT_FILE("rom_prog_text.mem"),
        .ROM_WIDTH(ROM_MAX_CHAR_BITS),
        .ROM_ADDR_BITS(ROM_MAX_STR_ADDR)
    ) rom_prog_text(
        .data(rom_text_line_data),
        .addr(rom_text_line_addr),
        .clk(clk),
        .en(1'b1)
    );
    
    reg [9:0] text_start_x;
    reg [9:0] text_start_y;
    wire [9:0] offset_x = gpu_pos_x - text_start_x;
    wire [9:0] offset_y = gpu_pos_y - text_start_y;
    
    initial begin
        text_start_x <= 100; // Example start position X
        text_start_y <= 50;  // Example start position Y
    end
    
    always @(posedge clk) begin
        if ((offset_x >= 0 && offset_x < 8) &&
            (offset_y >= 0 && offset_y < 16)) begin

            vram_data_in <= {ascii_row_out[16 + offset_x],   // Red
                             ascii_row_out[8 + offset_x],    // Green
                             ascii_row_out[offset_x]};       // Blue
        end else begin
            vram_data_in <= 3'b111;
        end
    end
    
    // Canvas renderer
//    wire [9:0] checker_x = gpu_pos_x / 40;
//    wire [9:0] checker_y = gpu_pos_y / 40;
//    wire [10:0] sum_checker = checker_x + checker_y;

//    always @(posedge clk) begin
//        vram_data_in <= {GPU_COLOR_BITS{sum_checker % 2 == 0}};
//    end
    
    // VRAM Read/Write Address
    // Read: Direct VRAM to VGA
    // Write: Direct GPU to VRAM
    assign vram_ra = (vga_pos_y * VGA_RES_WIDTH) + vga_pos_x;
    assign vram_wa = (gpu_pos_y * VGA_RES_WIDTH) + gpu_pos_x;
    
    // UART Controller
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
    
    assign {digits[1], digits[0]} = uart_data_rx;
    assign {digits[3], digits[2]} = uart_data_tx;
    
    assign ascii_char = uart_data_rx[6:0];
    assign char_row = gpu_pos_y[3:0];
endmodule
