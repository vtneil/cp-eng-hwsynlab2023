`timescale 1ns / 1ps

module ascii_text_generator #(
    parameter GPU_COLOR_BITS = 3
) (
    output wire [(8 * GPU_COLOR_BITS) - 1:0] row_out,
    input wire [6:0] ascii_char,    // ASCII Code of character
    input wire [3:0] char_row,      // Pixel Row: 4 bit, 0-15
    input wire [GPU_COLOR_BITS - 1:0] fg,
    input wire [GPU_COLOR_BITS - 1:0] bg,
    input wire clk,
    input wire en
);

    wire [7:0] row_out_raw;
    wire [(8 * GPU_COLOR_BITS) - 1:0] row_out_inv;

    ascii_rom ascii_rom_inst(
        .data(row_out_raw),
        .addr({ascii_char, char_row}),
        .clk(clk),
        .en(en)
    );
    
    // Reverse bit order
    genvar i, j;
    generate
        for (i = 0; i < GPU_COLOR_BITS; i = i + 1) begin
            assign row_out_inv[i * 8 +: 8] = {(row_out_raw & {8{fg[i]}}) | 
                                                         (~row_out_raw & {8{bg[i]}})};
            for (j = 0; j < 8; j = j + 1) begin
                assign row_out[(8 * i) + j] = row_out_inv[(8 * i) + (8 - j - 1)];
            end
        end
    endgenerate
    
endmodule
