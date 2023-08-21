`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2023 09:46:19 PM
// Design Name: 
// Module Name: testDFlipFlop
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


module testDFlipFlop();
    reg clk, nrst, d;
    wire q;
    DFlipFlop D1(q, clk, nrst, d);
    
    always begin
        #10 clk = ~clk;
    end

    always begin
        #8  d = ~d;
    end
    
    initial begin
        #0
            d = 0;
            clk = 0;
            nrst = 0;
        #50
            nrst = 1;
        #135
            nrst = 0;
        #140
            nrst = 1;
        #1000
            $finish;
    end
endmodule
