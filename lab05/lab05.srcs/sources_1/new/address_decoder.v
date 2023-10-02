`timescale 1ns / 1ps

module address_decoder #(
    parameter ADDR_WIDTH = 16,
    parameter IO_BASE_ADDR = 'hFFE0
) (
    output wire mem_sel,
    input wire [ADDR_WIDTH - 1:0] addr
);

    assign mem_sel = addr < IO_BASE_ADDR;

endmodule
