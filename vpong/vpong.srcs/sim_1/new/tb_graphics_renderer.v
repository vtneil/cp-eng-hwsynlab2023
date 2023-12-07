`timescale 1ns / 1ps

module tb_graphics_renderer();

    // Parameters of the graphics_renderer
    localparam CANVAS_WIDTH = 20;
    localparam CANVAS_HEIGHT = 10;

    // Testbench Signals
    reg clk;
    reg reset;
    wire [9:0] x;
    wire [9:0] y;

    // Instantiate the graphics_renderer module
    graphics_renderer #(
        .CANVAS_WIDTH(CANVAS_WIDTH),
        .CANVAS_HEIGHT(CANVAS_HEIGHT)
    ) uut (
        .x(x),
        .y(y),
        .clk(clk),
        .reset(reset)
    );

    // Clock generation (50 MHz)
    always begin
        #5 clk = ~clk; // Toggle clock every 10ns
    end

    // Testbench initialization and reset
    initial begin
        // Initialize
        clk = 0;
        reset = 1;

        // Apply reset
        #20 reset = 0; // Release reset after 20ns

        // Run for a specific duration to observe behavior
        #100000; // Run simulation for 100 microseconds

        // Finish simulation
        $finish;
    end

endmodule
