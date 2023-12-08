`timescale 1ns / 1ps

module ram_block #(
    parameter RAM_WIDTH = 8,
    parameter RAM_ADDR_BITS = 8
) (
    output wire [RAM_WIDTH - 1:0] data_out,
    input wire [RAM_WIDTH - 1:0] data_in,
    input wire [RAM_ADDR_BITS - 1:0] wa,
    input wire [RAM_ADDR_BITS - 1:0] ra,
    input wire clk,
    input wire we
);

    localparam RAM_SIZE = 2 ** RAM_ADDR_BITS;
    
    reg [RAM_WIDTH - 1:0] memory_block [RAM_SIZE - 1:0];
    
    // Synchronous write
    always @(posedge clk) begin
        if (we) memory_block[wa] <= data_in;
    end
    
    // Asynchronous read
    assign data_out = memory_block[ra];

endmodule
