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
