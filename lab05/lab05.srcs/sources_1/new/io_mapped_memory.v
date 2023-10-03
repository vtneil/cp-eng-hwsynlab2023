`timescale 1ns / 1ps

module io_mapped_memory #(
    parameter DATA_FILE = "empty32x16.mem",
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16,
    parameter IO_BASE_ADDR = 'hFFE0
) (
    inout wire [DATA_WIDTH - 1:0] data,
    input wire [ADDR_WIDTH - 1:0] addr,
    input wire wr,
    input wire clk,
    input wire [11:0] io_in,
    output wire [15:0] io_out
);

    wire mem_select = (addr < IO_BASE_ADDR) ? 1'b1: 1'b0;
    wire io_select = ~mem_select;
    
    wire [DATA_WIDTH - 1:0] sel_data;
    wire [DATA_WIDTH - 1:0] nsel_data;
    
    assign sel_data = (io_select) ? data : {DATA_WIDTH{1'bZ}};
    assign nsel_data = (mem_select) ? data : {DATA_WIDTH{1'bZ}};
    
    // User Memory
    memory #(
        .DATA_FILE(DATA_FILE), 
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) user_memory(
        nsel_data, 
        addr, 
        mem_wr & mem_select, 
        iclk
    );
    
    // IO Memory
    io_memory  #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) io_port(
        sel_data,
        addr,
        wr,
        clk,
        io_select,
        io_in,
        io_out
    );

endmodule
