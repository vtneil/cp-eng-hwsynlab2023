`timescale 1ns / 1ns

module fulladder(
    output reg cout,
    output reg s,
    input a,
    input b,
    input cin
);
    always @(a or b or cin) begin
        {cout, s} = a + b + cin;
    end
endmodule

module fulladder2(
    output cout,
    output s,
    input a,
    input b,
    input cin
);
    assign {cout, s} = a + b + cin;
endmodule
