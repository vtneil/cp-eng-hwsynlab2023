`timescale 1ns / 1ps

module nano_031_system #(
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
    
    // Display
    wire [3:0] digits [3:0];
    quad_7_seg(seg, an, dp, dclk, digits[3], digits[2], digits[1], digits[0]);
    
    // LEDs
    assign led = sw;
    
    // Inputs
    wire nrst;
    push_button pb_rst(~nrst, btnC, iclk);
    
    // Variables
    wire [31:0] a;
    wire [31:0] b;
    reg [31:0] c;
    reg z;
    reg cout;
    wire [3:0] op_in;
    
    assign a[3:0] = sw[3:0];
    assign b[3:0] = sw[7:4];
    assign op_in = sw[11:8];
    
    assign digits[0] = a[3:0];
    assign digits[1] = b[3:0];
    assign {digits[3], digits[2]} = c[7:0];
    
    // ALU
    alu i_alu(c, z, cout, a, b, 1'b0, op_in[2:0]);
endmodule
