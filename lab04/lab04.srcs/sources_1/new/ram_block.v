`timescale 1ns / 1ps

module ram_block #(
    parameter RAM_WIDTH = 8,
    parameter RAM_ADDR_BITS = 8
) (
    output reg [RAM_WIDTH - 1:0] data_out,
    input wire [RAM_WIDTH - 1:0] data_in,
    input wire [RAM_ADDR_BITS - 1:0] wa,
    input wire [RAM_ADDR_BITS - 1:0] ra,
    input wire clk,
    input wire we
);

    localparam RAM_SIZE = 2 ** RAM_ADDR_BITS;
    
    reg [RAM_WIDTH - 1:0] ram [RAM_SIZE - 1:0];

    always @(posedge clk) begin
        if (we) ram[wa] <= data_in;
        data_out <= ram[ra];
    end

endmodule
