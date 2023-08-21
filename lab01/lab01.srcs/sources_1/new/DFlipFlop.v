`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 09:58:35 PM
// Design Name: 
// Module Name: DFlipFlop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module DFlipFlop(
    output reg q,
    input clk,
    input nrst,
    input d
);
    always @(posedge clk or negedge nrst)
    begin
        if (nrst == 1)
            q <= d;
        else
            q <= 0;
    end
endmodule
