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
localparam GP_TEXT_FG4      = 5;
localparam GP_TEXT_FG3      = 6;
localparam GP_TEXT_FG2      = 7;
localparam GP_TEXT_FG1      = 8;
localparam GP_FOREGROUND    = 9;

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

// Keyboard Keycodes //////////////////////////////////////////
localparam KEY_A            = 8'h1C;
localparam KEY_B            = 8'h32;
localparam KEY_C            = 8'h21;
localparam KEY_D            = 8'h23;
localparam KEY_E            = 8'h24;
localparam KEY_F            = 8'h2B;
localparam KEY_G            = 8'h34;
localparam KEY_H            = 8'h33;
localparam KEY_I            = 8'h43;
localparam KEY_J            = 8'h3B;
localparam KEY_K            = 8'h42;
localparam KEY_L            = 8'h4B;
localparam KEY_M            = 8'h3A;
localparam KEY_N            = 8'h31;
localparam KEY_O            = 8'h44;
localparam KEY_P            = 8'h4D;
localparam KEY_Q            = 8'h15;
localparam KEY_R            = 8'h2D;
localparam KEY_S            = 8'h1B;
localparam KEY_T            = 8'h2C;
localparam KEY_U            = 8'h3C;
localparam KEY_V            = 8'h2A;
localparam KEY_W            = 8'h1D;
localparam KEY_X            = 8'h22;
localparam KEY_Y            = 8'h35;
localparam KEY_Z            = 8'h1A;
localparam KEY_SPACE        = 8'h29;
localparam KEY_ESC          = 8'h76;
