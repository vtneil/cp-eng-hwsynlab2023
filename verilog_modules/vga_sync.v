`timescale 1ns / 1ps

module vga_sync #(
    parameter H_DISPLAY         = 640,
    parameter H_BACK_PORCH      = 48,
    parameter H_FRONT_PORCH     = 16,
    parameter H_SYNC_PULSE      = 96,
    parameter V_DISPLAY         = 480,
    parameter V_BACK_PORCH      = 33,
    parameter V_FRONT_PORCH     = 10,
    parameter V_SYNC_PULSE      = 2
) (
    output wire hsync,
    output wire vsync,
    output wire video_on,
    output wire p_tick,
    output wire [9:0] x,
    output wire [9:0] y,
    input wire clk,
    input wire reset
);

    localparam H_MAX                = H_DISPLAY + H_BACK_PORCH + H_FRONT_PORCH + H_SYNC_PULSE - 1;
    localparam START_H_SYNC_PULSE   = H_DISPLAY + H_FRONT_PORCH;
    localparam END_H_SYNC_PULSE     = H_DISPLAY + H_FRONT_PORCH + H_SYNC_PULSE - 1;
    localparam V_MAX                = V_DISPLAY + V_FRONT_PORCH + V_BACK_PORCH + V_SYNC_PULSE - 1;
    localparam START_V_SYNC_PULSE   = V_DISPLAY + V_BACK_PORCH;
    localparam END_V_SYNC_PULSE     = V_DISPLAY + V_BACK_PORCH + V_SYNC_PULSE - 1;
    
    // registers to keep track of current pixel location
    reg [9:0] h_count_reg;
    reg [9:0] h_count_next;
    reg [9:0] v_count_reg;
    reg [9:0] v_count_next;
    
    // register to keep track of vsync and hsync signal states
    reg vsync_reg;
    reg hsync_reg;
    
    wire vsync_next;
    wire hsync_next;
 
    // infer registers
    always @(posedge clk, posedge reset)
        if (reset) begin
            v_count_reg <= 0;
            h_count_reg <= 0;
            vsync_reg   <= 0;
            hsync_reg   <= 0;
        end else begin
            v_count_reg <= v_count_next;
            h_count_reg <= h_count_next;
            vsync_reg   <= vsync_next;
            hsync_reg   <= hsync_next;
        end

    // next-state logic of horizontal vertical sync counters
    always @(*) begin
        h_count_next = (h_count_reg == H_MAX) ? 0 : h_count_reg + 1;
        v_count_next = (h_count_reg == H_MAX) ? 
                           (v_count_reg == V_MAX ? 0 : v_count_reg + 1) : 
                           (v_count_reg);
    end
        
    // hsync and vsync are active low signals
    // hsync signal asserted during horizontal retrace
    assign hsync_next = (h_count_reg >= START_H_SYNC_PULSE) && (h_count_reg <= END_H_SYNC_PULSE);

    // vsync signal asserted during vertical retrace
    assign vsync_next = (v_count_reg >= START_V_SYNC_PULSE) && (v_count_reg <= END_V_SYNC_PULSE);

    // video only on when pixels are in both horizontal and vertical display region
    assign video_on = (h_count_reg < H_DISPLAY) && (v_count_reg < V_DISPLAY);

    // output signals
    assign hsync  = hsync_reg;
    assign vsync  = vsync_reg;
    assign x      = h_count_reg;
    assign y      = v_count_reg;
    assign p_tick = clk;
endmodule

