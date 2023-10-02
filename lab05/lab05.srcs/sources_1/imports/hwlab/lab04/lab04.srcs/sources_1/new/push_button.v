`timescale 1ns / 1ps

module push_button #(
    parameter DEBOUNCE_TIME = 32'd2_500_000
) (
    output wire q,
    input wire d,
    input wire clk
);
    
    wire dbx;
    debouncer #(.DEBOUNCE_TIME(DEBOUNCE_TIME)) db(dbx, d, clk);
    assign q = dbx;
//    single_pulser sp(q, dbx, clk);

endmodule
