`timescale 1ns / 1ps

module text_renderer #(
    parameter GPU_COLOR_BITS    = 3,
    parameter VOID_COLOR        = 3'b011
) (
    output reg [GPU_COLOR_BITS - 1:0] pixel_data,
    input wire [9:0] x,
    input wire [9:0] y,
    input wire clk,
    input wire en,
    input wire [15:0] render_flag
);
    `include "params.vh"

    // Text Generation Local Parameters
    localparam CHAR_BASE_WIDTH      = 8;                    // 8x16 pixel ASCII character
    localparam CHAR_BASE_HEIGHT     = 16;                   // 8x16 pixel ASCII character
    
    localparam ROM_MAX_CHAR         = 16;                   // 16 characters per line
    localparam ROM_MAX_CHAR_ADDR    = $clog2(ROM_MAX_CHAR);
    localparam ROM_MAX_CHAR_BITS    = 8 * ROM_MAX_CHAR;
    localparam ROM_MAX_STR          = 16;                   // 16 strings in text ROM
    localparam ROM_MAX_STR_ADDR     = $clog2(ROM_MAX_STR);
    
    // Element Counter
    reg [31:0] elem_counter;
    reg [31:0] elem_max;
    
    // Parametized Render
    reg [GPU_COLOR_BITS - 1:0] fg_color;
    reg [GPU_COLOR_BITS - 1:0] bg_color;
    reg [9:0] text_start_x;
    reg [9:0] text_start_y;
    reg [2:0] text_scale;
    reg [ROM_MAX_STR_ADDR - 1:0] line_addr;
    
    initial begin
        fg_color <= COLOR3WHITE;
        bg_color <= COLOR3BLACK;
        text_start_x <= 32;
        text_start_y <= 32;
        text_scale <= 1;
        line_addr <= 9;
    end
    
    wire signal_start_frame = (x == 0) & (y == 0);
    wire [(8 * GPU_COLOR_BITS) - 1:0] ascii_row_out;
    wire [6:0] ascii_char;          // 7-bit ASCII character code
    wire [3:0] char_row;            // 4-bit row of ASCII character
    
    ascii_text_generator #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS)
    ) text_generator(
        .row_out(ascii_row_out),
        .ascii_char(ascii_char),
        .char_row(char_row),
        .fg(fg_color),
        .bg(bg_color),
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
        .MEM_INIT_FILE("rom_prog_text.mem"),
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
    assign char_row = offset_y_scaled[3:0];
    
    // Selective Region Renderer //////////////////////////////
    always @(posedge clk) begin
        if ((valid_start_x && offset_x < char_width_scaled * ROM_MAX_CHAR) &&
            (valid_start_y && offset_y < char_height_scaled) &&
            (ascii_char != 0)) begin

            pixel_data <= {ascii_row_out[16 + (offset_x_scaled % CHAR_BASE_WIDTH)],   // Red
                           ascii_row_out[8 + (offset_x_scaled % CHAR_BASE_WIDTH)],    // Green
                           ascii_row_out[(offset_x_scaled % CHAR_BASE_WIDTH)]};       // Blue
            
        end else begin
            pixel_data <= VOID_COLOR;
        end
    end

endmodule
