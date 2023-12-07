`timescale 1ns / 1ps

module game_logic #(
    parameter BASE_CORE_CLOCK   = 100_000_000,  // MHz
    parameter VGA_RES_WIDTH     = 640,          // VGA Resolution (Height)
    parameter VGA_RES_HEIGHT    = 480,          // VGA Resolution (Width)
    parameter BALL_VELOCITY     = 200,          // pixels per second
    parameter PADDLE_VELOCITY   = 240           // pixels per second
) (
    output wire [19:0] ball_pos,
    output wire [19:0] paddle_pos,
    input wire clk,
    input wire reset
);

    `include "params.vh"
    
    // #Clocks per pixel moved.
    localparam BALL_T = BASE_CORE_CLOCK / BALL_VELOCITY;
    localparam PADDLE_T = BASE_CORE_CLOCK / PADDLE_VELOCITY;
    
    reg [1:0] glob_state;       // Global State [00-11]
    reg [1:0] game_state;       // Game State [00-11]
    
    reg [1:0] ball_count;       // Number of balls left
    reg [9:0] ball_px;          // Ball position X
    reg [9:0] ball_py;          // Ball position Y
    reg [1:0] ball_dir;         // Ball direction X, Y
    
    reg [9:0] pad1_py;          // Paddle 1 position
    reg [9:0] pad2_py;          // Paddle 2 position
    
    reg d_inc;
    reg d_clr;
    
//    always @(posedge clk, posedge reset) begin
        
//    end
    
    always @(posedge clk) begin
        
    end
    
    assign ball_pos = {ball_px, ball_py};

endmodule
