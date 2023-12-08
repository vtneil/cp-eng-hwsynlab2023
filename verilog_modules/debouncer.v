`timescale 1ns / 1ps

module debouncer #(
    parameter DEBOUNCE_COUNT = 32'd12_500_000,  // 125 ms debounce
    parameter DATA_WIDTH = 1
) (
    output reg [DATA_WIDTH - 1:0] btn_out,
    input wire [DATA_WIDTH - 1:0] btn_in,
    input wire clk
);

    reg [31:0] counter = 0;
    reg [DATA_WIDTH - 1:0] btn_stable = 0;
    
    always @(posedge clk) begin
        if (btn_in == btn_stable) begin
            if (counter < DEBOUNCE_COUNT) counter <= counter + 1;
        end else begin
            counter <= 0;
            btn_stable <= btn_in;
        end

        if (counter >= DEBOUNCE_COUNT) btn_out <= btn_stable;
    end

endmodule