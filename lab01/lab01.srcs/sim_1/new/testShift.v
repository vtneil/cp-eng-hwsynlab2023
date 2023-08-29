`timescale 1ns / 1ns

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
