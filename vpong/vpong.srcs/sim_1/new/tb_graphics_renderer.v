`timescale 1ns / 1ps

module counter_d99_tb;

    // Inputs
    reg clk;
    reg reset;

    // Outputs
    wire [3:0] d1;
    wire [3:0] d0;

    // Instantiate the Unit Under Test (UUT)
    counter_d99 uut (
        .clk(clk), 
        .reset(reset), 
        .d1(d1), 
        .d0(d0)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;

        // Wait 100 ns for global reset to finish
        #100;
        reset = 0;

        // Add stimulus here
        #1000;  // Wait for 1000 ns to observe the counter behavior

        // Reset the counter
        reset = 1;
        #10;
        reset = 0;

        // Additional tests can be added here

        #1000;  // Wait for 1000 ns to observe the counter behavior after reset
    end

    // Clock generator
    always #5 clk = ~clk; // Toggle clock every 5 ns

endmodule
