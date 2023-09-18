`timescale 1ns / 1ps

module single_pulser(
    output reg out,
    input wire in,
    input wire clk
);

    reg in_prev = 0;

    always @(posedge clk) begin
        out <= in & ~in_prev;
        in_prev <= in;
    end
endmodule
