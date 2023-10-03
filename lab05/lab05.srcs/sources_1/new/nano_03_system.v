`timescale 1ns / 1ps

module nano_03_system #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16,
    parameter CLK_DIV1 = 32'd2,
    parameter CLK_DIV2 = 32'd125_000
) (
    output wire [11:0] led,
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    input wire clk,
    input wire [11:0] sw,
    input wire btnC
);

    // Clocks
    wire iclk;
    wire dclk;
    clk_div clk_div_i(iclk, clk, CLK_DIV1);
    clk_div clk_div_d(dclk, clk, CLK_DIV2);
    
    // Inputs
    wire rst;
    wire nrst = ~rst;
    push_button pb_rst(rst, btnC, iclk);
    
    // Display
    wire [3:0] digits [3:0];
    wire all_digits = {digits[3], digits[2], digits[1], digits[0]};
    quad_7_seg main_display(seg, 
        an, 
        dp, 
        dclk, 
        (rst) ? 4'd8 : digits[3], 
        (rst) ? 4'd8 : digits[2], 
        (rst) ? 4'd8 : digits[1], 
        (rst) ? 4'd8 : digits[0]
    );
    
    // LEDs
    assign led = sw;
    
    // Variables
    reg [3:0] a;
    reg [3:0] b;
    reg [7:0] c;
    reg [3:0] op_in;
    
    // CPU Wires
    wire [DATA_WIDTH - 1:0] p_address;
    wire [DATA_WIDTH - 1:0] p_data;
    wire [DATA_WIDTH - 1:0] d_address;
    wire mem_wr;
    wire [DATA_WIDTH - 1:0] d_data;
    
    // CPU
    nanocpu	main_cpu(
        p_address,
        p_data,
        d_address,
        d_data,
        mem_wr,
        iclk,
        nrst
    );
    
    // Program Memory
    rom #(
        .PROG_FILE("lab05_03.mem"), 
        .ADDR_WIDTH(ADDR_WIDTH)
    ) program_memory(
        p_data, 
        p_address[ADDR_WIDTH + 1:2]
    );
    
    // Memory
    io_mapped_memory #(
        .DATA_FILE("empty32x16.mem"), 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) user_memory(
        data,
        d_address[ADDR_WIDTH - 1:0], 
        mem_wr, 
        iclk,
        sw,
        all_digits
    );

endmodule
