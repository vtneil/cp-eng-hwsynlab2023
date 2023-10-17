`timescale 1ns / 1ps

module vga_test #(
    parameter WIDTH = 640,
    parameter HEIGHT = 480
) (
    input wire clk,
    input wire [11:0] sw,
    input wire btnU,
    input wire btnD,
    input wire btnL,
    input wire btnR,
    output wire hsync, vsync,
    output wire [11:0] rgb
);  
    
    wire bbtnU;
    wire bbtnD;
    wire bbtnL;
    wire bbtnR;
    
    switch_button(bbtnU, btnU, clk);
    switch_button(bbtnD, btnD, clk);
    switch_button(bbtnL, btnL, clk);
    switch_button(bbtnR, btnR, clk);

    wire p_tick;
    wire [9:0] x, y;
	
	// register for Basys 2 8-bit RGB DAC 
	reg [11:0] rgb_reg;
    reg [11:0] first_color, second_color;
	
	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;
    reg reset;
    
    reg mode;

    // instantiate vga_sync
    vga_sync vga_sync_unit (.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync),
                            .video_on(video_on), .p_tick(p_tick), .x(x), .y(y));

    initial begin
        reset <= 0;
        mode <= 0;
        first_color <= 12'hFFF;
        second_color <= 12'h000;
    end

    always @(posedge clk) begin
        reset <= bbtnD;
        if(bbtnU) mode <= !mode;
        if(bbtnL) first_color <= sw;
        if(bbtnR) second_color <= sw;
    end

    always @(posedge p_tick) begin
        if(mode) begin
            rgb_reg[3:0] <= ((second_color[3:0] - first_color[3:0]) * (x / WIDTH)) + first_color[3:0];
            rgb_reg[7:4] <= ((second_color[7:4] - first_color[7:4]) * (x / WIDTH)) + first_color[7:4];
            rgb_reg[11:8] <= ((second_color[11:8] - first_color[11:8]) * (x / WIDTH)) + first_color[11:8];
        end
        else begin
            rgb_reg[3:0] <= ((second_color[3:0] - first_color[3:0]) * (y / HEIGHT)) + first_color[3:0];
            rgb_reg[7:4] <= ((second_color[7:4] - first_color[7:4]) * (y / HEIGHT)) + first_color[7:4];
            rgb_reg[11:8] <= ((second_color[11:8] - first_color[11:8]) * (y / HEIGHT)) + first_color[11:8];
        end
    end
    
    // input
    assign video_on = sw[15];
    
    // output
    assign rgb = (video_on) ? rgb_reg : 12'b0;
endmodule