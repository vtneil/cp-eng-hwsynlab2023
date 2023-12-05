`timescale 1ns / 1ps

module keyboard_tester #(
    parameter BASE_CORE_CLOCK = 100_000_000,
    parameter VGA_RES_WIDTH = 640,
    parameter VGA_RES_HEIGHT = 480,
    parameter VGA_COLOR_DEPTH = 4
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
    
    localparam VGA_PIXEL_COUNT = VGA_RES_WIDTH * VGA_RES_HEIGHT;
    localparam VGA_VRAM_ADDR_BITS = $clog2(VGA_PIXEL_COUNT);
    
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
    
    wire vram_data_out;
    reg vram_data_in;
    
    // Video Memory (VRAM)
    ram_block #(
        .RAM_WIDTH(1),
        .RAM_ADDR_BITS(VGA_VRAM_ADDR_BITS)
    ) main_vga_vram_bw(
        .data_out(vram_data_out),
        .data_in(vram_data_in),
        .wa(vram_wa),
        .ra(vram_ra),
        .clk(clk),
        .we(1'b1 | vram_we)
    );
    
    always @(posedge vga_tick) begin
        vga_r <= (vram_data_out) ? 4'b1111 : 4'b0000;
        vga_g <= (vram_data_out) ? 4'b1111 : 4'b0000;
        vga_b <= (vram_data_out) ? 4'b1111 : 4'b0000;
    end
    
    assign {vgaRed, vgaGreen, vgaBlue} = (vga_on) ? {vga_r, vga_g, vga_b} : 12'd0;
    
    // Graphics Renderer
    reg [9:0] gpu_pos_x;
    reg [9:0] gpu_pos_y;
    wire [9:0] gpu_pos_x_next = gpu_pos_x + 1;
    wire [9:0] gpu_pos_y_next = gpu_pos_y + 1;
    
    initial begin
        gpu_pos_x <= 0;
        gpu_pos_y <= 0;
    end
    
    // Checkerboard renderer
    wire [9:0] checker_x = gpu_pos_x / 20;
    wire [9:0] checker_y = gpu_pos_y / 20;
    wire [10:0] sum_checker = checker_x + checker_y;
    
    always @(posedge clk) begin
        if (gpu_pos_x_next < VGA_RES_WIDTH) begin
            vram_data_in <= ~(sum_checker % 2 == 0);
            gpu_pos_x <= gpu_pos_x_next;
        end else begin
            gpu_pos_x <= 0;
            gpu_pos_y <= gpu_pos_y_next;
        end
    
        if (gpu_pos_y_next >= VGA_RES_HEIGHT) begin
            gpu_pos_y <= 0;
        end
    end
    
    assign vram_ra = (vga_pos_y * VGA_RES_HEIGHT) + vga_pos_x;
    assign vram_wa = (gpu_pos_y * VGA_RES_HEIGHT) + gpu_pos_x - 2;
    
    // UART Controller
    wire baud;
    wire received, sent;
    wire [7:0] data_receive;
    reg [7:0] data_send;
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
        .din(data_send),
        .en(en_write_uart),
        .baud_clk(baud)
    );
    
    uart_rx usb_rs232_rx(
        .dout(data_receive),
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
            data_send <= data_receive;
            
            // Enable Tx to send somethinh.
            en_write_uart <= 1'b1;
        end
        
        // Update the temporary
        received_old <= received;
    end
    
    assign all_digits = data_receive;

endmodule
