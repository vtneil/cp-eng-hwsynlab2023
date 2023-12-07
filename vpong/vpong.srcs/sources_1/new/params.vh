// 3-bit RGB colors ///////////////////////////////////////////
localparam COLOR3BLACK      = 3'b000;
localparam COLOR3WHITE      = 3'b111;
localparam COLOR3RED        = 3'b100;
localparam COLOR3GREEN      = 3'b010;
localparam COLOR3BLUE       = 3'b001;
localparam COLOR3CYAN       = 3'b011;
localparam COLOR3MAGENTA    = 3'b101;
localparam COLOR3YELLOW     = 3'b110;

// Render Flags ///////////////////////////////////////////////
localparam RF_SCORE         = 4'd15;

// Graphics Layers ////////////////////////////////////////////
localparam GP_BACKGROUND    = 0;
localparam GP_GRAPHICS      = 1;
localparam GP_TEXT_BG       = 2;
localparam GP_PADDLE        = 3;
localparam GP_BALL          = 4;
localparam GP_TEXT_FG       = 5;
localparam GP_FOREGROUND    = 6;

// Global State and Game State ////////////////////////////////
localparam GLOB_STATE_MENU  = 2'd0;
localparam GLOB_STATE_RULE  = 2'd1;
localparam GLOB_STATE_GAME  = 2'd2;
localparam GLOB_STATE_OVER  = 2'd3;

localparam GAME_STATE_NEW   = 2'd0;
localparam GAME_STATE_PLAY  = 2'd1;
localparam GAME_STATE_BALL  = 2'd2;
localparam GAME_STATE_OVER  = 2'd3;

// Game Constants /////////////////////////////////////////////
localparam BALL_DIR_LEFT    = 1'b1;
localparam BALL_DIR_RIGHT   = 1'b0;
localparam BALL_DIR_UP      = 1'b1;
localparam BALL_DIR_DOWN    = 1'b0;
