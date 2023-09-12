`timescale 1ns / 1ps

module sim_sp();
    
    reg clk, in;
    wire out;
    
    single_pulser pulser(out, in, clk);
    
    // Clock
    always #10 clk = ~clk;
    
    // Sequential
    initial begin
        #0
            clk = 0;
            in = 0;
        #100 in = 1;
        #100 in = 0;
        #100 in = 1;
        #100 in = 0;
        #1000
            $finish;
    end
    
endmodule
