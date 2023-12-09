`timescale 1ns / 1ps

module game_logic #(
    parameter BASE_CORE_CLOCK   = 100_000_000,  // MHz
    parameter VGA_RES_WIDTH     = 640,          // VGA Resolution (Height)
    parameter VGA_RES_HEIGHT    = 480,          // VGA Resolution (Width)
    parameter IMAGE_BALL_W      = 16,
    parameter IMAGE_BALL_H      = 16,
    parameter IMAGE_PADDLE_W    = 8,
    parameter IMAGE_PADDLE_H    = 72,
    parameter PADDLE1_X_MIN     = 0,
    parameter PADDLE2_X_MAX     = VGA_RES_WIDTH - IMAGE_PADDLE_W,
    parameter PADDLE_X_ZONE     = 200,          // pixels
    parameter BALL_VX           = 100,          // pixels per second
    parameter BALL_VY           = 100,          // pixels per second
    parameter PADDLE_VY         = 100           // pixels per second
) (
    output wire [1:0] glob_state_o,
    output wire [1:0] game_state_o,
    output reg [1:0] ball_status,
    
    output wire [7:0] score_p1,
    output wire [7:0] score_p2,
    
    output wire [19:0] ball1_pos,
    output wire [19:0] ball0_pos,
    output wire [19:0] paddle1_pos,
    output wire [19:0] paddle2_pos,
    
    input wire [255:0] key_states,
    input wire [255:0] key_press,
    input wire [255:0] key_release,
    input wire clk,
    input wire btn_reset
);

    `include "params.vh"
    
    localparam VGA_MID_X        = VGA_RES_WIDTH / 2;
    localparam VGA_MID_Y        = VGA_RES_HEIGHT / 2;
    localparam BALL_TX          = (BASE_CORE_CLOCK / BALL_VX) / 2;      // #Clocks per pixel moved.
    localparam BALL_TY          = (BASE_CORE_CLOCK / BALL_VY) / 2;      // #Clocks per pixel moved.
    localparam PADDLE_T         = (BASE_CORE_CLOCK / PADDLE_VY) / 2;    // #Clocks per pixel moved.
    
    localparam PADDLE1_X_MAX    = PADDLE1_X_MIN + PADDLE_X_ZONE;
    localparam PADDLE2_X_MIN    = PADDLE2_X_MAX - PADDLE_X_ZONE;
    
    wire [9:0] BALL_SPAWN_X[1:0];
    assign BALL_SPAWN_X[1] = VGA_MID_X - (IMAGE_BALL_W / 2) - 40;
    assign BALL_SPAWN_X[0] = VGA_MID_X - (IMAGE_BALL_W / 2) + 40;
    
    wire [9:0] BALL_SPAWN_Y[1:0];
    assign BALL_SPAWN_Y[1] = VGA_MID_Y - (IMAGE_BALL_H / 2);
    assign BALL_SPAWN_Y[0] = VGA_MID_Y - (IMAGE_BALL_H / 2);
    
    wire BALL_SPAWN_DX[1:0];
    assign BALL_SPAWN_DX[1] = BALL_DIR_LEFT;
    assign BALL_SPAWN_DX[0] = BALL_DIR_RIGHT;
    
    wire BALL_SPAWN_DY[1:0];
    assign BALL_SPAWN_DY[1] = BALL_DIR_DOWN;
    assign BALL_SPAWN_DY[0] = BALL_DIR_UP;
    
    wire reset = btn_reset;
    
    reg [1:0] glob_state;       // Global State [00-11]
    reg [1:0] game_state;       // Game State [00-11]
    reg [1:0] glob_state_next;  // Global State [00-11]
    reg [1:0] game_state_next;  // Game State [00-11]
    
    assign glob_state_o = glob_state;
    assign game_state_o = game_state;
    
    reg [9:0] ball_px[1:0];     // Ball position X
    reg ball_dx[1:0];           // Ball direction X
    reg [9:0] ball_py[1:0];     // Ball position Y
    reg ball_dy[1:0];           // Ball direction Y
    
    reg [9:0] pad1_px;          // Paddle 1 position X
    reg pad1_vx;                // Paddle 1 velocity binary X
    reg pad1_dx;                // Paddle 1 direction X
    reg [9:0] pad1_py;          // Paddle 1 position Y
    reg pad1_vy;                // Paddle 1 velocity binary Y
    reg pad1_dy;                // Paddle 1 direction Y
    
    reg [9:0] pad2_px;          // Paddle 2 position X
    reg pad2_vx;                // Paddle 2 velocity binary X
    reg pad2_dx;                // Paddle 2 direction X
    reg [9:0] pad2_py;          // Paddle 2 position Y
    reg pad2_vy;                // Paddle 2 velocity binary Y
    reg pad2_dy;                // Paddle 2 direction Y
    
    reg d_inc;
    reg d_clr;
    
    wire [1:0] ball_hits_left;
    wire [1:0] ball_hits_right;
    wire [1:0] ball_hits_horz;
    wire [1:0] ball_in_horz;
    
    wire [1:0] ball_hits_top;
    wire [1:0] ball_hits_bot;
    wire [1:0] ball_hits_vert;
    wire [1:0] ball_in_vert;
    wire [1:0] ball_in_frame;
    
    wire tick_ball_x;
    wire tick_ball_y;
    
    wire [1:0] ball_hits_paddle1;
    wire [1:0] ball_hits_paddle2;
    wire [1:0] ball_hits_paddles;
    
    // For ball hitting one another
    wire hit_vert;
    wire hit_horz;
    
    genvar i;
    generate
        for (i = 0; i < 2; i = i + 1) begin
            assign ball_hits_left[i] = (ball_px[i] <= 0);
            assign ball_hits_right[i] = (ball_px[i] + IMAGE_BALL_W >= VGA_RES_WIDTH - 1);
            assign ball_hits_horz[i] = ball_hits_left[i] | ball_hits_right[i];
            assign ball_in_horz[i] = ~ball_hits_horz[i];
            
            assign ball_hits_top[i] = (ball_py[i] <= 0);
            assign ball_hits_bot[i] = (ball_py[i] + IMAGE_BALL_H >= VGA_RES_HEIGHT - 1);
            assign ball_hits_vert[i] = ball_hits_top[i] | ball_hits_bot[i];
            assign ball_in_vert[i] = ~ball_hits_vert[i];
            assign ball_in_frame[i] = ball_in_horz[i] & ball_in_vert[i];
        end
    endgenerate
    
    generate
        for (i = 0; i < 2; i = i + 1) begin
            assign ball_hits_paddle1[i] = (ball_px[i] + IMAGE_BALL_W > pad1_px && pad1_px + IMAGE_PADDLE_W > ball_px[i]) &&
                                          (ball_py[i] + IMAGE_BALL_H > pad1_py && pad1_py + IMAGE_PADDLE_H > ball_py[i]);
            assign ball_hits_paddle2[i] = (ball_px[i] + IMAGE_BALL_W > pad2_px && pad2_px + IMAGE_PADDLE_W > ball_px[i]) &&
                                          (ball_py[i] + IMAGE_BALL_H > pad2_py && pad2_py + IMAGE_PADDLE_H > ball_py[i]);
            assign ball_hits_paddles[i] = ball_hits_paddle1[i] | ball_hits_paddle2[i];
        end
    endgenerate
    
    // For ball hitting one another
    // Horizontal collision detection
    assign hit_horz = ((ball_px[0] <= ball_px[1] + IMAGE_BALL_W) && (ball_px[0] + IMAGE_BALL_W >= ball_px[1])) &&
                      !(ball_py[0] + IMAGE_BALL_H < ball_py[1] || ball_py[1] + IMAGE_BALL_H < ball_py[0]);
    
    // Vertical collision detection
    assign hit_vert = ((ball_py[0] < ball_py[1] + IMAGE_BALL_H) && (ball_py[0] + IMAGE_BALL_H > ball_py[1])) &&
                      !(ball_px[0] + IMAGE_BALL_W < ball_px[1] || ball_px[1] + IMAGE_BALL_W < ball_px[0]);

    wire pad1_hits_left = (pad1_px <= PADDLE1_X_MIN);
    wire pad1_hits_right = (pad1_px + IMAGE_PADDLE_W >= PADDLE1_X_MAX);
    wire pad1_hits_top = (pad1_py <= 0);
    wire pad1_hits_bot = (pad1_py + IMAGE_PADDLE_H >= VGA_RES_HEIGHT - 1);
    
    wire pad2_hits_left = (pad2_px <= PADDLE2_X_MIN);
    wire pad2_hits_right = (pad2_px + IMAGE_PADDLE_W >= PADDLE2_X_MAX);
    wire pad2_hits_top = (pad2_py <= 0);
    wire pad2_hits_bot = (pad2_py + IMAGE_PADDLE_H >= VGA_RES_HEIGHT - 1);
    
    wire tick_paddle;
    
    // State Management ///////////////////////////////////////
    initial begin
        glob_state <= 0;
        game_state <= 0;
    end
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            glob_state <= 0;
            game_state <= 0;
        end else begin
            case (glob_state)
                2'b00: begin
                    if (key_release[KEY_SPACE]) begin
                        glob_state <= 2'b01;
                    end
                end
                
                2'b01: begin
                    if (key_release[KEY_SPACE]) begin
                        glob_state <= 2'b10;
                    end else if (key_release[KEY_ESC]) begin
                        glob_state <= 2'b00;
                    end
                end
                
                2'b10: begin
                    if (key_release[KEY_ESC]) begin
                        glob_state <= 2'b00;
                    end
                end
                
                2'b11: begin
                    if (key_release[KEY_SPACE] | key_release[KEY_ESC]) begin
                        glob_state <= 2'b00;
                    end
                end
            endcase
        end
    end
    
    wire tx_c;
    counter cx(
        .clk_out(tx_c),
        .cnt_out(),
        .clk_in(clk),
        .target(BASE_CORE_CLOCK / 2),
        .reset(reset)
    );
    
    // Score counter //////////////////////////////////////////
    counter_d99 score_counter_p1(
        .d1(score_p1[7:4]),
        .d0(score_p1[3:0]),
        .clk(tx_c),
        .reset()
    );
    counter_d99 score_counter_p2(
        .d1(score_p2[7:4]),
        .d0(score_p2[3:0]),
        .clk(tx_c),
        .reset()
    );
    
    // Velocity Timing ////////////////////////////////////////
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
    
    counter #(
    ) paddle_movement(
        .clk_out(tick_paddle),
        .cnt_out(),
        .clk_in(clk),
        .target(PADDLE_T),
        .reset(reset)
    );
    
    // BALL LOGIC /////////////////////////////////////////////
    
    generate
        for (i = 0; i < 2; i = i + 1) begin
            initial begin
                ball_px[i] <= BALL_SPAWN_X[i];
                ball_dx[i] <= BALL_SPAWN_DX[i];
                
                ball_py[i] <= BALL_SPAWN_Y[i];   
                ball_dy[i] <= BALL_SPAWN_DY[i];
            end
        end
    endgenerate
    
    initial begin
        ball_status <= 0;
        
        pad1_px <= PADDLE1_X_MIN + 1;
        pad1_py <= VGA_MID_Y - (IMAGE_PADDLE_H / 2);
        
        pad2_px <= PADDLE2_X_MAX - 1;
        pad2_py <= VGA_MID_Y - (IMAGE_PADDLE_H / 2);
    end
    
    generate
        for (i = 0; i < 2; i = i + 1) begin
            always @(posedge tick_ball_x, posedge reset) begin
                if (reset) begin
                    ball_status[i] <= 0;
                    
                    ball_px[i] <= BALL_SPAWN_X[i];
                    ball_dx[i] <= BALL_SPAWN_DX[i];
                end else begin
                    if (ball_hits_horz[i]) begin
                        ball_dx[i] <= ~ball_dx[i];
                        if (ball_dx[i] == BALL_DIR_LEFT)
                            ball_px[i] <= ball_px[i] + 1;
                        else
                            ball_px[i] <= ball_px[i] - 1;
                            
                        if (ball_hits_left[i]) begin
                            // Add score to player 1
                        end else if (ball_hits_right[i]) begin
                            // Add score to player 2
                        end
                        
                        // Go to next ball state.
                        
                    end else if (ball_hits_paddles[i] | hit_horz) begin
                        ball_dx[i] <= ~ball_dx[i];
                        if (ball_dx[i] == BALL_DIR_LEFT)
                            ball_px[i] <= ball_px[i] + 1;
                        else
                            ball_px[i] <= ball_px[i] - 1;
                        
                    end else begin
                        // Ball in region
                        if (ball_dx[i] == BALL_DIR_LEFT)
                            ball_px[i] <= ball_px[i] - 1;
                        else
                            ball_px[i] <= ball_px[i] + 1;
                    end
                end
            end
            
            always @(posedge tick_ball_y, posedge reset) begin
                if (reset) begin
                    ball_py[i] <= BALL_SPAWN_Y[i];   
                    ball_dy[i] <= BALL_SPAWN_DY[i];
                end else begin
                    if (ball_hits_vert[i] | hit_vert) begin
                        ball_dy[i] <= ~ball_dy[i];
                        if (ball_dy[i] == BALL_DIR_UP)
                            ball_py[i] <= ball_py[i] + 1;
                        else
                            ball_py[i] <= ball_py[i] - 1;
                    end else begin
                        if (ball_dy[i] == BALL_DIR_UP)
                            ball_py[i] <= ball_py[i] - 1;
                        else
                            ball_py[i] <= ball_py[i] + 1;
                    end
                end
            end
        end
    endgenerate
    
    // PADDLE LOGIC ///////////////////////////////////////////
    
    // Paddle velocity and direction on key presses
    always @(*) begin
        // Paddle 1 (Y)
        case ({key_states[KEY_W], key_states[KEY_S]})
            2'b10: begin
                pad1_dy = BALL_DIR_UP;
                pad1_vy = 1'b1;
            end
            2'b01: begin
                pad1_dy = BALL_DIR_DOWN;
                pad1_vy = 1'b1;
            end
            default: begin
                pad1_dy = BALL_DIR_UP;
                pad1_vy = 1'b0;
            end
        endcase
        
        // Paddle 1 (X)
        case ({key_states[KEY_A], key_states[KEY_D]})
            2'b10: begin
                pad1_dx = BALL_DIR_LEFT;
                pad1_vx = 1'b1;
            end
            2'b01: begin
                pad1_dx = BALL_DIR_RIGHT;
                pad1_vx = 1'b1;
            end
            default: begin
                pad1_dx = BALL_DIR_LEFT;
                pad1_vx = 1'b0;
            end
        endcase
        
        // Paddle 2 (Y)
        case ({key_states[KEY_I], key_states[KEY_K]})
            2'b10: begin
                pad2_dy = BALL_DIR_UP;
                pad2_vy = 1'b1;
            end
            2'b01: begin
                pad2_dy = BALL_DIR_DOWN;
                pad2_vy = 1'b1;
            end
            default: begin
                pad2_dy = BALL_DIR_UP;
                pad2_vy = 1'b0;
            end
        endcase
        
        // PADDLE 2 (X)
        case ({key_states[KEY_J], key_states[KEY_L]})
            2'b10: begin
                pad2_dx = BALL_DIR_LEFT;
                pad2_vx = 1'b1;
            end
            2'b01: begin
                pad2_dx = BALL_DIR_RIGHT;
                pad2_vx = 1'b1;
            end
            default: begin
                pad2_dx = BALL_DIR_LEFT;
                pad2_vx = 1'b0;
            end
        endcase
    end
    
    always @(posedge tick_paddle, posedge reset) begin
        if (reset) begin
            pad1_px <= PADDLE1_X_MIN + 1;
            pad1_py <= VGA_MID_Y - (IMAGE_PADDLE_H / 2);
            
            pad2_px <= PADDLE2_X_MAX - 1;
            pad2_py <= VGA_MID_Y - (IMAGE_PADDLE_H / 2);
        end else begin
            // Paddle 1 (Y)
            if (pad1_dy == BALL_DIR_UP) begin
                if (pad1_vy) begin
                    if (~pad1_hits_top) begin
                        pad1_py <= pad1_py - 1;
                    end else begin
                        pad1_py <= pad1_py + 1;
                    end
                end
            end else begin
                if (pad1_vy) begin
                    if (~pad1_hits_bot) begin
                        pad1_py <= pad1_py + 1;
                    end else begin
                        pad1_py <= pad1_py - 1;
                    end
                end
            end
            
            // Paddle 1 (X)
            if (pad1_dx == BALL_DIR_LEFT) begin
                if (pad1_vx) begin
                    if (~pad1_hits_left) begin
                        pad1_px <= pad1_px - 1;
                    end else begin
                        pad1_px <= pad1_px + 1;
                    end
                end
            end else begin
                if (pad1_vx) begin
                    if (~pad1_hits_right) begin
                        pad1_px <= pad1_px + 1;
                    end else begin
                        pad1_px <= pad1_px - 1;
                    end
                end
            end
        
            // Paddle 2 (Y)
            if (pad2_dy == BALL_DIR_UP) begin
                if (pad2_vy) begin
                    if (~pad2_hits_top) begin
                        pad2_py <= pad2_py - 1;
                    end else begin
                        pad2_py <= pad2_py + 1;
                    end
                end
            end else begin
                if (pad2_vy) begin
                    if (~pad2_hits_bot) begin
                        pad2_py <= pad2_py + 1;
                    end else begin
                        pad2_py <= pad2_py - 1;
                    end
                end
            end
            
            // Paddle 2 (X)
            if (pad2_dx == BALL_DIR_LEFT) begin
                if (pad2_vx) begin
                    if (~pad2_hits_left) begin
                        pad2_px <= pad2_px - 1;
                    end else begin
                        pad2_px <= pad2_px + 1;
                    end
                end
            end else begin
                if (pad2_vx) begin
                    if (~pad2_hits_right) begin
                        pad2_px <= pad2_px + 1;
                    end else begin
                        pad2_px <= pad2_px - 1;
                    end
                end
            end
        end
    end
    
    assign ball1_pos = {ball_px[1], ball_py[1]};
    assign ball0_pos = {ball_px[0], ball_py[0]};
    assign paddle1_pos = {pad1_px, pad1_py};
    assign paddle2_pos = {pad2_px, pad2_py};

endmodule
