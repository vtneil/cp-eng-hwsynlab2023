`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 10:38:28 PM
// Design Name: 
// Module Name: testShift
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


module testShift();
    reg clk, d;
    wire [1:0] qA;
    wire [1:0] qB;
    
    shiftA a(qA, clk, d);
    shiftB b(qB, clk, d);
    
    // Clock
    always #10 clk = ~clk;
    
    // Signal
    always #8  d = ~d;  
    
    // Sequential
    initial begin
        #0
            d = 0;
            clk = 0;
        #1000
            $finish;
    end
    
endmodule
