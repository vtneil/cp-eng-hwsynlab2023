`timescale 1ns / 1ps

module game_logic #(
    parameter BASE_CORE_CLOCK   = 100_000_000,  // MHz
    parameter VGA_RES_WIDTH     = 640,          // VGA Resolution (Height)
    parameter VGA_RES_HEIGHT    = 480,          // VGA Resolution (Width)
    parameter IMAGE_BALL_W      = 16,
    parameter IMAGE_BALL_H      = 16,
    parameter IMAGE_PADDLE_W    = 8,
    parameter IMAGE_PADDLE_H    = 72,
    parameter PADDLE1_X         = 0,
    parameter PADDLE2_X         = VGA_RES_WIDTH - IMAGE_PADDLE_W,
    parameter BALL_VX           = 100,          // pixels per second
    parameter BALL_VY           = 100,          // pixels per second
    parameter PADDLE_VY         = 100           // pixels per second
) (
    output wire [19:0] ball_pos,
    output wire [19:0] paddle_pos,
    input wire clk,
    input wire reset
);

    `include "params.vh"
    
    localparam VGA_MID_X    = VGA_RES_WIDTH / 2;
    localparam VGA_MID_Y    = VGA_RES_HEIGHT / 2;
    localparam BALL_TX      = BASE_CORE_CLOCK / BALL_VX;    // #Clocks per pixel moved.
    localparam BALL_TY      = BASE_CORE_CLOCK / BALL_VY;    // #Clocks per pixel moved.
    localparam PADDLE_T     = BASE_CORE_CLOCK / PADDLE_VY;  // #Clocks per pixel moved.
    
    reg [1:0] glob_state;       // Global State [00-11]
    reg [1:0] game_state;       // Game State [00-11]
    
    reg [1:0] ball_count;       // Number of balls left
    reg [9:0] ball_px;          // Ball position X
    reg [9:0] ball_py;          // Ball position Y
    reg ball_dx;                // Ball direction X
    reg ball_dy;                // Ball direction Y
    
    reg [9:0] pad1_py;          // Paddle 1 position
    reg [9:0] pad2_py;          // Paddle 2 position
    
    reg d_inc;
    reg d_clr;
    
    wire ball_hits_left = (ball_px <= 0);
    wire ball_hits_right = (ball_px + IMAGE_BALL_W >= VGA_RES_WIDTH - 1);
    wire ball_hits_horz = ball_hits_left | ball_hits_right;
    wire ball_in_horz = ~ball_hits_horz;
    wire tick_ball_x;
    
    wire ball_hits_top = (ball_py <= 0);
    wire ball_hits_bot = (ball_py + IMAGE_BALL_H >= VGA_RES_HEIGHT - 1);
    wire ball_hits_vert = ball_hits_top | ball_hits_bot;
    wire ball_in_vert = ~ball_hits_vert;
    wire tick_ball_y;
    
    wire ball_in_frame = ball_in_horz & ball_in_vert;
    
    wire ball_hits_paddle1 = (PADDLE2_X + IMAGE_PADDLE_W >= ball_px) &&
                             (PADDLE2_X + IMAGE_PADDLE_W <= ball_px + IMAGE_BALL_W) &&
                             (ball_py + IMAGE_BALL_H > pad2_py && pad2_py + IMAGE_PADDLE_H > ball_py);
                             
    wire ball_hits_paddle2 = (ball_px + IMAGE_BALL_W >= PADDLE2_X) &&
                             (ball_px <= PADDLE2_X) &&
                             (ball_py + IMAGE_BALL_H > pad2_py && pad2_py + IMAGE_PADDLE_H > ball_py);
    wire ball_hits_paddles = ball_hits_paddle1 | ball_hits_paddle2;
    
    counter #(
    ) cnt_ball_movement_x(
        .clk_out(tick_ball_x),
        .cnt_out(),
        .clk_in(clk),
        .target(BALL_TX),
        .reset(reset)
    );
    
    counter #(
    ) cnt_ball_movement_y(
        .clk_out(tick_ball_y),
        .cnt_out(),
        .clk_in(clk),
        .target(BALL_TY),
        .reset(reset)
    );
    
    initial begin
        ball_px <= VGA_MID_X - (IMAGE_BALL_W / 2);
        ball_py <= VGA_MID_Y - (IMAGE_BALL_H / 2);
        ball_dx <= BALL_DIR_RIGHT;
        ball_dy <= BALL_DIR_UP;
    end
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            // other resets
        end else begin
            // other logics
        end
    end
    
    always @(posedge tick_ball_x, posedge reset) begin
        if (reset) begin
            ball_px <= VGA_MID_X - (IMAGE_BALL_W / 2);
            ball_dx <= BALL_DIR_RIGHT;
        end else begin
            if (ball_hits_horz) begin
                ball_dx <= ~ball_dx;
                if (ball_dx == BALL_DIR_LEFT)
                    ball_px <= ball_px + 1;
                else
                    ball_px <= ball_px - 1;
                    
                if (ball_hits_left) begin
                    // Add score to player 1
                end else if (ball_hits_right) begin
                    // Add score to player 2
                end
                
                // Go to next ball state.
                
            end else if (ball_hits_paddles) begin // todo
                ball_dx <= ~ball_dx;
                if (ball_dx == BALL_DIR_LEFT)
                    ball_px <= ball_px + 1;
                else
                    ball_px <= ball_px - 1;
                
            end else begin
                // Ball in region
                if (ball_dx == BALL_DIR_LEFT)
                    ball_px <= ball_px - 1;
                else
                    ball_px <= ball_px + 1;
            end
        end
    end
    
    always @(posedge tick_ball_y, posedge reset) begin
        if (reset) begin
            ball_py <= VGA_MID_Y - (IMAGE_BALL_H / 2);
            ball_dy <= BALL_DIR_UP;
        end else begin
//            if (ball_hits_vert) begin
//                ball_dy <= ~ball_dy;
//                if (ball_dy == BALL_DIR_UP)
//                    ball_py <= ball_py + 1;
//                else
//                    ball_py <= ball_py - 1;
//            end else begin
//                if (ball_dy == BALL_DIR_UP)
//                    ball_py <= ball_py - 1;
//                else
//                    ball_py <= ball_py + 1;
//            end
        end
    end
    
    assign ball_pos = {ball_px, ball_py};
    assign paddle_pos = {pad1_py, pad2_py};

endmodule
