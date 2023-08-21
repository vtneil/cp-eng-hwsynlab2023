`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 10:34:43 PM
// Design Name: 
// Module Name: shifter
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


module shiftA(
    output reg [1:0] q,
    input clk,
    input d
);
    always @(posedge clk) begin
        q[0] = d;
        q[1] = q[0];
    end
endmodule

module shiftB(
    output reg [1:0] q,
    input clk,
    input d
);
    always @(posedge clk) begin
        q[0] <= d;
        q[1] <= q[0];
    end
endmodule
