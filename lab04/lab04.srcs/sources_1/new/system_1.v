`timescale 1ns / 1ps

module system_1(
    output wire [15:0] led,
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    input wire clk,
    input wire [7:0] sw,
    input wire btnC,
    input wire btnU,
    input wire btnL,
    input wire btnD,
    input wire btnR
);

    // Parameters
    parameter CLK_DIV1 = 32'd2;
    parameter CLK_DIV2 = 32'd500_000;
    parameter RAM_ADDR_BITS = 4;
    parameter RAM_SIZE = 2 ** RAM_ADDR_BITS;
    
    // Clocks
    wire iclk;
    wire dclk;
    clk_div cdi(iclk, clk, CLK_DIV1);
    clk_div cdd(dclk, clk, CLK_DIV2);
    
    // Display
    wire [3:0] digits [3:0];
    quad_7_seg(seg, an, dp, dclk, digits[3], digits[2], digits[1], digits[0]);
    
    // Inputs
    wire bbtnU, bbtnC, bbtnD;
    push_button pbU(bbtnU, btnU, iclk);
    push_button pbC(bbtnC, btnC, iclk);
    push_button pbD(bbtnD, btnD, iclk);
    
    // Registers
    wire [7:0] num;
    assign num = sw;
    
    // Stack
    wire [7:0] data_o;
    wire [7:0] sp;
    wire overflow, underflow;
    
    stack #(
        .DATA_WIDTH(8),
        .ADDR_BITS(RAM_ADDR_BITS)
    ) stack(data_o, overflow, underflow, sp[RAM_ADDR_BITS - 1:0], num, bbtnU, bbtnC, bbtnD, iclk);
    
    assign {digits[1], digits[0]} = sp;
    assign {digits[3], digits[2]} = data_o;
    
    assign led[7:0] = sw;
    assign led[13:8] = 0;
    assign led[15:14] = {overflow, underflow};

endmodule
