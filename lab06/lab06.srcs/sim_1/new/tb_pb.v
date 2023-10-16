`timescale 1ns / 1ps

module tb_push_button;

    parameter DEBOUNCE_COUNT = 32'd4;
    parameter BUTTON_WIDTH = 1;

    reg [BUTTON_WIDTH - 1:0] d;
    reg clk;
    wire [BUTTON_WIDTH - 1:0] q;

    // Instantiate the Unit Under Test (UUT)
    push_button #(
        .DEBOUNCE_COUNT(DEBOUNCE_COUNT),
        .BUTTON_WIDTH(BUTTON_WIDTH)
    ) uut (
        .q(q), 
        .d(d), 
        .clk(clk)
    );
    
    integer i;

    initial begin
        clk = 0;
        d = 0;

        #100;

        d = 1;
        
        #500;
        
        d = 0;

        // Finish the simulation
        $finish;
    end

    // Clock Generation
    always begin
        #5 clk = ~clk;  // Toggle every 5 ns to generate a 100 MHz clock
    end

    // Monitor the results
    initial begin
        $monitor("At time %t, d = %b, q = %b", $time, d, q);
    end

endmodule
