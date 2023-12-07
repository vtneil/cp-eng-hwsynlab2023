`timescale 1ns / 1ps

module counter_tb;

    // Parameters of the counter
    localparam BIT_WIDTH = 32;

    // Testbench Signals
    reg clk_in;
    reg [BIT_WIDTH - 1:0] target;
    reg reset;
    wire clk_out;
    wire [BIT_WIDTH - 1:0] cnt_out;

    // Instantiate the counter module
    counter #(
        .BIT_WIDTH(BIT_WIDTH)
    ) uut (
        .clk_out(clk_out),
        .cnt_out(cnt_out),
        .clk_in(clk_in),
        .target(target),
        .reset(reset)
    );

    // Clock generation for clk_in (let's say 100 MHz)
    always begin
        #5 clk_in = ~clk_in; // Toggle clock every 5ns
    end

    // Testbench initialization and reset
    initial begin
        // Initialize
        clk_in = 0;
        reset = 1;
        target = 100; // Example target value

        // Apply reset
        #10 reset = 0; // Release reset after 10ns

        // Run for a specific duration to observe behavior
        #100000; // Run simulation for 100 microseconds

        // Finish simulation
        $finish;
    end

endmodule
