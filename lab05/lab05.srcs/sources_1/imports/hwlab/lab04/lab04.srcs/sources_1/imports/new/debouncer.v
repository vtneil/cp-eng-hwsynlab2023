`timescale 1ns / 1ps

module debouncer #(
    parameter DEBOUNCE_TIME = 32'd12_500_000
) (
    output reg btn_out,
    input wire btn_in,
    input wire clk
);

    reg [31:0] counter = 0;
    reg btn_stable = 0;
    
    always @(posedge clk) begin
        if (btn_in == btn_stable) begin
            if (counter < DEBOUNCE_TIME) counter <= counter + 1;
        end else begin
            counter <= 0;
            btn_stable <= btn_in;
        end

        if (counter >= DEBOUNCE_TIME) btn_out <= btn_stable;
    end

endmodule