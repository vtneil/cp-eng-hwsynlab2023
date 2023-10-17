`timescale 1ns / 1ps

module tb_single_pulser;

    reg clk;
    reg in;
    wire out;

    // Instantiate the Unit Under Test (UUT)
    single_pulser uut (
        .out(out),
        .in(in),
        .clk(clk)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        in = 0;

        // Wait for 20 ns for global reset
        #20;
        
        // Create a rising edge on 'in' 
        #10 in = 1;
        #20 in = 0;
        
        // Create another rising edge after some time
        #30 in = 1;
        #20 in = 0;
        
        // Create a series of rising edges
        #20 in = 1;
        #20 in = 0;
        #20 in = 1;
        #20 in = 0;

        // Finish the simulation
        #20 $finish;
    end

    // Clock Generation
    always #5 clk = ~clk; // 10ns period -> 100 MHz

    // Monitor the results
    initial begin
        $monitor("Time: %0tns, in: %b, out: %b", $time, in, out);
    end

endmodule
