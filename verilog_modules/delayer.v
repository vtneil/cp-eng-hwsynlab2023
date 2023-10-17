`timescale 1ns / 1ps

module delayer #(
    parameter DELAY_CLOCK = 1
) (
    output reg out,
    input wire clk,
    input wire in
);

    reg [DELAY_CLOCK-1:0] shift_reg = {DELAY_CLOCK{1'b0}};

    always @(posedge clk) begin
        // Shift the input signal into the shift register
        shift_reg <= {shift_reg[DELAY_CLOCK-2:0], in};
        // The output is the last bit in the shift register
        out <= shift_reg[DELAY_CLOCK-1];
    end

endmodule
