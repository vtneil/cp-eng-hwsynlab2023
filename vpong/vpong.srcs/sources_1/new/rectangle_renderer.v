`timescale 1ns / 1ps


module rectangle_renderer #(
    parameter GPU_COLOR_BITS    = 3,
    parameter RECT_WIDTH        = 40,
    parameter RECT_HEIGHT       = 40
) (
    output reg [GPU_COLOR_BITS - 1:0] pixel_data,
    output reg pixel_on,
    input wire [9:0] x,
    input wire [9:0] y,
    input wire [9:0] start_x,
    input wire [9:0] start_y,
    input wire [GPU_COLOR_BITS - 1:0] color,
    input wire clk,
    input wire en
);

    `include "params.vh"
    
    wire [9:0] offset_x = x - start_x;
    wire [9:0] offset_y = y - start_y;
    wire valid_start_x = x >= start_x;
    wire valid_start_y = y >= start_y;
    
    // Selective Region Renderer //////////////////////////////
    always @(posedge clk) begin
        if ((valid_start_x && offset_x < RECT_WIDTH) &&
            (valid_start_y && offset_y < RECT_HEIGHT)) begin
            
            pixel_data <= color;
            pixel_on <= 1'b1;
            
        end else begin
        
            pixel_on <= 1'b0;
            
        end
    end

endmodule
