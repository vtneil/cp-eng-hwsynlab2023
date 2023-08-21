`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2023 10:58:40 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    output reg cout,
    output reg s,
    input a,
    input b,
    input cin
);
    always @(a or b or cin) begin
        {cout, s} = a + b + cin;
    end
endmodule
