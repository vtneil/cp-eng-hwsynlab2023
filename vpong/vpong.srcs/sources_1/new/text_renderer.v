`timescale 1ns / 1ps

module text_renderer #(
    parameter GPU_COLOR_BITS    = 3,
    parameter VOID_COLOR        = 3'b011,
    parameter CHAR_BASE_WIDTH   = 8,
    parameter CHAR_BASE_HEIGHT  = 16,
    parameter MAX_STRLEN        = 16,
    parameter MAX_NUM_STR       = 16,
    parameter TEXT_ROM_FILE     = "rom_prog_text.mem"
) (
    output reg [GPU_COLOR_BITS - 1:0] pixel_data,
    input wire [9:0] x,
    input wire [9:0] y,
    input wire [9:0] text_start_x,
    input wire [9:0] text_start_y,
    input wire [2:0] text_scale,
    input wire [15:0] render_flag,
    input wire [GPU_COLOR_BITS - 1:0] fg_color,
    input wire [GPU_COLOR_BITS - 1:0] bg_color,
    input wire transparent_bg,
    input wire [$clog2(MAX_NUM_STR) - 1:0] line_addr,
    input wire clk,
    input wire en
);
    `include "params.vh"

    // Text Generation Local Parameters
    localparam GPU_COLOR_BITS_ALPHA = GPU_COLOR_BITS + 1;       // With MSB Alpha channel: ARGB
    localparam ROM_MAX_CHAR         = MAX_STRLEN;               // 16 characters per line
    localparam ROM_MAX_CHAR_ADDR    = $clog2(ROM_MAX_CHAR);
    localparam ROM_MAX_CHAR_BITS    = 8 * ROM_MAX_CHAR;
    localparam ROM_MAX_STR          = MAX_NUM_STR;              // 16 strings in text ROM
    localparam ROM_MAX_STR_ADDR     = $clog2(ROM_MAX_STR);
    
    wire [(8 * GPU_COLOR_BITS_ALPHA) - 1:0] ascii_row_out;
    wire [6:0] ascii_char;          // 7-bit ASCII character code
    wire [$clog2(CHAR_BASE_HEIGHT) - 1:0] char_row;            // 4-bit row of ASCII character
    
    // 8x16 Bitmap of ASCII Charset
    ascii_text_generator #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS_ALPHA)     // With alpha channel on MSB: (ARGB)
    ) text_generator(
        .row_out(ascii_row_out),
        .ascii_char(ascii_char),
        .char_row(char_row),
        .fg({1'b1, fg_color}),
        .bg({~transparent_bg, bg_color}),
        .clk(clk),
        .en(en)
    );
    
    wire [ROM_MAX_CHAR_BITS - 1:0] rom_text_line_data;
    wire [7:0] rom_text_line[ROM_MAX_CHAR - 1:0];
    wire [ROM_MAX_CHAR_ADDR - 1:0] rom_text_char_index;
    
    wire [ROM_MAX_STR_ADDR - 1:0] rom_text_line_addr = line_addr;
    
    genvar i;
    generate
        for (i = 0; i < ROM_MAX_CHAR; i = i + 1) begin
            assign rom_text_line[i] = rom_text_line_data[7 + (8 * i):0 + (8 * i)];
        end
    endgenerate
    
    rom_block_hex #(
        .MEM_INIT_FILE(TEXT_ROM_FILE),
        .ROM_WIDTH(ROM_MAX_CHAR_BITS),
        .ROM_ADDR_BITS(ROM_MAX_STR_ADDR)
    ) rom_prog_text(
        .data(rom_text_line_data),
        .addr(rom_text_line_addr),
        .clk(clk),
        .en(en)
    );
    
    wire [9:0] offset_x = x - text_start_x;
    wire [9:0] offset_y = y - text_start_y;
    wire valid_start_x = x >= text_start_x;
    wire valid_start_y = y >= text_start_y;
    
    wire [9:0] char_width_scaled = CHAR_BASE_WIDTH * text_scale;
    wire [9:0] char_height_scaled = CHAR_BASE_HEIGHT * text_scale;
    wire [9:0] offset_x_scaled = offset_x / text_scale;
    wire [9:0] offset_y_scaled = offset_y / text_scale;
    
    assign rom_text_char_index = ROM_MAX_CHAR - (offset_x / char_width_scaled) - 1;
    assign ascii_char = rom_text_line[rom_text_char_index][6:0];
    assign char_row = offset_y_scaled[$clog2(CHAR_BASE_HEIGHT) - 1:0];
    
    wire pixel_a = ascii_row_out[24 + (offset_x_scaled % CHAR_BASE_WIDTH)];
    wire pixel_r = ascii_row_out[16 + (offset_x_scaled % CHAR_BASE_WIDTH)];
    wire pixel_g = ascii_row_out[8 + (offset_x_scaled % CHAR_BASE_WIDTH)];
    wire pixel_b = ascii_row_out[(offset_x_scaled % CHAR_BASE_WIDTH)];
    wire [GPU_COLOR_BITS - 1:0] pixel_rgb = {pixel_r, pixel_g, pixel_b};
    
    // Selective Region Renderer //////////////////////////////
    always @(posedge clk) begin
        if ((valid_start_x && offset_x < char_width_scaled * ROM_MAX_CHAR) &&
            (valid_start_y && offset_y < char_height_scaled) &&
            (ascii_char != 0) && (pixel_a)) begin
            
            pixel_data <= pixel_rgb;
            
        end else begin
            pixel_data <= VOID_COLOR;
        end
    end

endmodule
