`timescale 1ns / 1ns

module DFlipFlop(
    output reg q,
    input clk,
    input nrst,
    input d
);
    always @(posedge clk or negedge nrst)
    begin
        if (nrst == 1)
            q <= d;
        else
            q <= 0;
    end
endmodule
