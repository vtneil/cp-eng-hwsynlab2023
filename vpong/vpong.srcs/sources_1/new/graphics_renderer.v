`timescale 1ns / 1ps

module graphics_renderer #(
    parameter CANVAS_WIDTH = 640,
    parameter CANVAS_HEIGHT = 480
) (
    output wire [9:0] x,
    output wire [9:0] y,
    input wire clk,
    input wire reset
);
    
    reg [9:0] gpu_px;
    reg [9:0] gpu_py;
    wire [9:0] gpu_px_next = gpu_px + 1;
    wire [9:0] gpu_py_next = gpu_py + 1;
    
    initial begin
        gpu_px <= 0;
        gpu_py <= 0;
    end
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            gpu_px <= 0;
            gpu_py <= 0;
        end else begin
            if (gpu_px_next < CANVAS_WIDTH) begin
                gpu_px <= gpu_px_next;
            end else begin
                gpu_px <= 0;
                gpu_py <= gpu_py_next;
            end
        
            if (gpu_px_next >= CANVAS_WIDTH && 
                gpu_py_next >= CANVAS_HEIGHT) begin
                gpu_py <= 0;
            end
        end
    end
    
    assign x = gpu_px;
    assign y = gpu_py;

endmodule
