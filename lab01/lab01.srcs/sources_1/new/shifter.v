`timescale 1ns / 1ns

module shiftA(
    output reg [1:0] q,
    input clk,
    input d
);
    always @(posedge clk) begin
        q[0] = d;
        q[1] = q[0];
    end
endmodule

module shiftB(
    output reg [1:0] q,
    input clk,
    input d
);
    always @(posedge clk) begin
        q[0] <= d;
        q[1] <= q[0];
    end
endmodule
