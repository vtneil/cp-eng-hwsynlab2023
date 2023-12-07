`timescale 1ns / 1ps


module rectangle_renderer #(
    parameter GPU_COLOR_BITS    = 3,
    parameter RECT_WIDTH        = 40,
    parameter RECT_HEIGHT       = 40
) (
    output reg [GPU_COLOR_BITS - 1:0] pixel_data,
    input wire [9:0] x,
    input wire [9:0] y,
    input wire [9:0] rect_start_x,
    input wire [9:0] rect_start_y,
    input wire [2:0] rect_scale,
    input wire [GPU_COLOR_BITS - 1:0] rect_color,
    input wire clk,
    input wire en
);

    `include "params.vh"
    
    

endmodule
