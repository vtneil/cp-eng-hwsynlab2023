`timescale 1ns / 1ps

module tb_delayer;

    parameter DELAY_CLOCK = 1; // Define the delay in clock cycles
    parameter CLK_PERIOD = 10; // Define the clock period in ns

    reg clk;
    reg in;
    reg nrst;
    wire out;

    // Instantiate the delayer module
    delayer #(
        .DELAY_CLOCK(DELAY_CLOCK)
    ) uut (
        .clk(clk),
        .in(in),
        .out(out)
    );

    // Clock generation
    always begin
        # (CLK_PERIOD / 2) clk = ~clk;
    end

    initial begin
        // Initialize variables
        clk = 0;
        in = 0;
        nrst = 0;
        
        #20;
        nrst = 1;

        // Wait for some time before starting the test
        #100;

        // Apply test vectors
        in = 1'b1; #CLK_PERIOD;
        in = 1'b0; #CLK_PERIOD;
        in = 1'b1; #CLK_PERIOD;
        in = 1'b0; #CLK_PERIOD;
        in = 1'b1; #(CLK_PERIOD * DELAY_CLOCK); // Longer delay to observe the output

        // End simulation
        #100 $finish;
    end

    // Monitor
    initial begin
        $monitor("Time: %0t, Input: %b, Output: %b", $time, in, out);
    end

endmodule
