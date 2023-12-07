`timescale 1ns / 1ps

module bitmap_renderer #(
    parameter GPU_COLOR_BITS    = 3,
    parameter VOID_COLOR        = 3'b011,
    parameter IMAGE_WIDTH       = 16,
    parameter IMAGE_HEIGHT      = 16,
    parameter IMAGE_ROM_FILE    = "rom_ball_texture.mem"
) (
    output reg [GPU_COLOR_BITS - 1:0] pixel_data,
    input wire [9:0] x,
    input wire [9:0] y,
    input wire [9:0] image_start_x,
    input wire [9:0] image_start_y,
    input wire [2:0] image_scale,
    input wire clk,
    input wire en
);
    `include "params.vh"
    
    // Image Generation Local Parameters
    localparam GPU_COLOR_BITS_ALPHA = GPU_COLOR_BITS + 1;       // With MSB Alpha channel: ARGB
    localparam ROM_MAX_COL_ADDR     = $clog2(IMAGE_WIDTH);
    localparam ROM_MAX_ROW_ADDR     = $clog2(IMAGE_HEIGHT);
    localparam ROM_COL_BITS         = IMAGE_WIDTH * GPU_COLOR_BITS_ALPHA;
    
    wire [ROM_COL_BITS - 1:0] rom_image_line_data;
    wire [GPU_COLOR_BITS_ALPHA - 1:0] rom_image_line[IMAGE_WIDTH - 1:0];
    wire [ROM_MAX_ROW_ADDR - 1:0] rom_image_line_addr;
    
    genvar i;
    generate
        for (i = 0; i < IMAGE_WIDTH; i = i + 1) begin
            assign rom_image_line[i] = rom_image_line_data[(i + 1) * GPU_COLOR_BITS_ALPHA - 1: i * GPU_COLOR_BITS_ALPHA];
        end
    endgenerate
    
    rom_block #(
        .MEM_INIT_FILE(IMAGE_ROM_FILE),
        .ROM_WIDTH(ROM_COL_BITS),
        .ROM_ADDR_BITS(ROM_MAX_ROW_ADDR)
    ) rom_image_bitmap(
        .data(rom_image_line_data),
        .addr(rom_image_line_addr),
        .clk(clk),
        .en(en)
    );
    
    wire [9:0] offset_x = x - image_start_x;
    wire [9:0] offset_y = y - image_start_y;
    wire valid_start_x = x >= image_start_x;
    wire valid_start_y = y >= image_start_y;
    
    wire [9:0] image_width_scaled = IMAGE_WIDTH * image_scale;
    wire [9:0] image_height_scaled = IMAGE_HEIGHT * image_scale;
    wire [9:0] offset_x_scaled = offset_x / image_scale;
    wire [9:0] offset_y_scaled = offset_y / image_scale;
    
    assign rom_image_line_addr = offset_y_scaled % IMAGE_HEIGHT;
    
    wire [GPU_COLOR_BITS_ALPHA - 1:0] pixel_argb = rom_image_line[(offset_x_scaled % IMAGE_WIDTH)];
    wire pixel_a = pixel_argb[GPU_COLOR_BITS_ALPHA - 1];
    wire [GPU_COLOR_BITS - 1:0] pixel_rgb = pixel_argb[GPU_COLOR_BITS - 1:0];
    
    // Selective Region Renderer //////////////////////////////
    always @(posedge clk) begin
        if ((valid_start_x && offset_x < image_width_scaled) &&
            (valid_start_y && offset_y < image_height_scaled) &&
            (pixel_a)) begin
            
            pixel_data <= pixel_rgb;
            
        end else begin
            pixel_data <= VOID_COLOR;
        end
    end

endmodule
