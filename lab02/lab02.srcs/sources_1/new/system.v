`timescale 1ns / 1ps

module system(output wire [6:0] seg,
              output wire dp,
              output wire [3:0] an,
              input wire clk);
    wire [3:0] num3;
    wire [3:0] num2;
    wire [3:0] num1;
    wire [3:0] num0;
    
    assign dp = 1'b0;
    assign num3 = 1;
    assign num2 = 2;
    assign num1 = 3;
    assign num0 = 4;
    
    // Clock Divider
    wire oclk;
    clk_div cdiv(oclk, clk);
    
    quad_7_seg seg_tdm(seg, an, oclk, num3, num2, num1, num0);
endmodule
