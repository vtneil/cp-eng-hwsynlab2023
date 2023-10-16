`timescale 1ns / 1ps

module rom_block #(
    parameter MEM_INIT_FILE = "calculator_4b.bin",
    parameter ROM_WIDTH = 8,
    parameter ROM_ADDR_BITS = 10
) (
    output reg [ROM_WIDTH - 1:0] data,
    input wire [ROM_ADDR_BITS - 1:0] addr,
    input wire clk,
    input wire en
);

    localparam ROM_SIZE = 2 ** ROM_ADDR_BITS;

    (* rom_style="{distributed | block}" *)
    reg [ROM_WIDTH - 1:0] rom [ROM_SIZE - 1:0];


    initial
       $readmemb(MEM_INIT_FILE, rom, 0, ROM_SIZE - 1);

    always @(posedge clk) begin
        if (en) data <= rom[addr];
    end

endmodule
