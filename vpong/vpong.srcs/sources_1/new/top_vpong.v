`timescale 1ns / 1ps

module top_vpong #(
    parameter BASE_CORE_CLOCK   = 100_000_000,      // Base FPGA Clock Speed in Hz
    parameter VGA_RES_WIDTH     = 640,              // VGA Resolution (Height)
    parameter VGA_RES_HEIGHT    = 480,              // VGA Resolution (Width)
    parameter VGA_COLOR_DEPTH   = 4,                // Color per Channel
    parameter GPU_COLOR_DEPTH   = 1                 // Color per Channel
) (
    output wire Hsync,
    output wire Vsync,
    output wire [VGA_COLOR_DEPTH - 1:0] vgaRed,
    output wire [VGA_COLOR_DEPTH - 1:0] vgaGreen,
    output wire [VGA_COLOR_DEPTH - 1:0] vgaBlue,
    
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    
    output wire [15:0] led,
    
    output wire RsTx,
    input wire RsRx,
    
    input wire PS2Data,
    input wire PS2Clk,
    
    input wire [15:0] sw,
    input wire btnC,
    input wire btnL,
    input wire clk
);
    
    `include "params.vh"
    
    // Graphics Local Parameters //////////////////////////////
    localparam VGA_MID_X            = VGA_RES_WIDTH / 2;
    localparam VGA_MID_Y            = VGA_RES_HEIGHT / 2;
    localparam VGA_PIXEL_COUNT      = VGA_RES_WIDTH * VGA_RES_HEIGHT;
    localparam VGA_VRAM_ADDR_BITS   = $clog2(VGA_PIXEL_COUNT);
    localparam GPU_COLOR_BITS       = GPU_COLOR_DEPTH * 3;
    localparam GRAPHICS_LAYERS      = 11;  // 11 layers rendering
    
    // Graphics Objects ///////////////////////////////////////
    localparam PADDLE_DIST          = 20;  // Paddle distance from left/right borders
    localparam IMAGE_BALL_W         = 16;
    localparam IMAGE_BALL_H         = 16;
    localparam IMAGE_PADDLE_W       = 8;
    localparam IMAGE_PADDLE_H       = 72;
    
    localparam MAX_NUM_STR          = 32;
    localparam STR_PER_FRAME        = 4;
    localparam OFFSET_MEM_NUMERIC   = 10;
    
    // Game Parameters ////////////////////////////////////////
    localparam MAX_GAME_SCORE       = 21;
    
    // Generate ///////////////////////////////////////////////
    genvar i;
    
    // System /////////////////////////////////////////////////
    wire sys_clk;
    wire reset;
    wire reset_vga;
    reg [15:0] led_r;
    wire gpu_frame_tick;
    
    // Clocks and Dividers ////////////////////////////////////
    wire CLK_100MHZ, CLK_50MHZ, CLK_40MHZ, CLK_25MHZ;
    CW clock_inst(
        .CLK_100MHZ(CLK_100MHZ),
        .CLK_50MHZ(CLK_50MHZ),
        .CLK_40MHZ(CLK_40MHZ),
        .CLK_25MHZ(CLK_25MHZ),         
        .CLK_SOURCE(clk)
    );
    
    // System clock
    assign sys_clk = CLK_100MHZ;

    // 1000 Hz (1ms) general-purpose clock
    wire clk_1ms;
    clk_div clk_1ms_div(clk_1ms, CLK_100MHZ, 32'd100_000);
    
    // 4 Hz (250ms) general-purpose clock
    wire clk_250ms;
    clk_div clk_250ms_div(clk_250ms, clk_1ms, 32'd250);
    
    // 2 Hz (500ms) general-purpose clock
    wire clk_500ms;
    clk_div clk_500ms_div(clk_500ms, clk_1ms, 32'd500);
    
    // 1 Hz (1s) general-purpose clock
    wire clk_1s;
    clk_div clk_1s_div(clk_1s, clk_1ms, 32'd1_000);
    
    // 200 Hz for Display 50 Hz (4 digits)
    wire clk_disp;
    clk_div clk_disp_div(clk_disp, CLK_100MHZ, 32'd500_000);
    
    // Input Buttons and Switches /////////////////////////////
    switch_button btn_reset(
        .q(reset),
        .d(btnC),
        .clk(CLK_100MHZ)
    );
    switch_button btn_reset_vga(
        .q(reset_vga),
        .d(btnL),
        .clk(CLK_100MHZ)
    );
    
    wire [15:0] i_sw;
    
    switch_button #(
        .BUTTON_WIDTH(16)
    ) sw_array(
        .q(i_sw),
        .d(sw),
        .clk(CLK_100MHZ)
    );
    
    // Keyboard Input /////////////////////////////////////////
    wire [255:0] key_states;
    wire [255:0] key_press;
    wire [255:0] key_release;
    
    keyboard ps2_usb_keyboard(
        .keycode(),
        .key_states(key_states),
        .key_press(key_press),
        .key_release(key_release),
        .ps2_clk(PS2Clk),
        .ps2_data(PS2Data),
        .clk_50mhz(CLK_50MHZ),
        .clk(sys_clk)
    );
    
    // Game Components ////////////////////////////////////////
    wire [1:0] glob_state;
    wire [1:0] game_state;
    wire [7:0] score_p1;
    wire [7:0] score_p2;
    
    wire [1:0] ball_status;
    wire [9:0] ball_px[1:0];
    wire [9:0] ball_py[1:0];
    
    wire [9:0] pad1_px;
    wire [9:0] pad1_py;
    
    wire [9:0] pad2_px;
    wire [9:0] pad2_py;
    
    game_logic #(
        .BASE_CORE_CLOCK(BASE_CORE_CLOCK),
        .VGA_RES_WIDTH(VGA_RES_WIDTH),
        .VGA_RES_HEIGHT(VGA_RES_HEIGHT),
        .IMAGE_BALL_W(IMAGE_BALL_W),
        .IMAGE_BALL_H(IMAGE_BALL_H),
        .IMAGE_PADDLE_W(IMAGE_PADDLE_W),
        .IMAGE_PADDLE_H(IMAGE_PADDLE_H),
        .PADDLE1_X_MIN(PADDLE_DIST),
        .PADDLE2_X_MAX(VGA_RES_WIDTH - (PADDLE_DIST + IMAGE_PADDLE_W)),
        .PADDLE_X_ZONE(200),
        .BALL_VX(500),
        .BALL_VY(500),
        .PADDLE_VY(600)
    ) game_logic_inst(
        .glob_state_o(glob_state),
        .game_state_o(game_state),
        .ball_status(ball_status),
        .score_p1(score_p1),
        .score_p2(score_p2),
        .ball1_pos({ball_px[1], ball_py[1]}),
        .ball0_pos({ball_px[0], ball_py[0]}),
        .paddle1_pos({pad1_px, pad1_py}),
        .paddle2_pos({pad2_px, pad2_py}),
        .key_states(key_states),
        .key_press(key_press),
        .key_release(key_release),
        .clk(sys_clk),
        .btn_reset(reset),
        .MAX_SCORE(i_sw[0] ? 8'd99 : MAX_GAME_SCORE)
    );
    
    always @(posedge sys_clk) begin
        led_r[15:14] <= glob_state;
        led_r[13:12] <= game_state;
        
    end
    
    always @(posedge clk_500ms) begin
        if (i_sw[0]) begin
            led_r[0] <= 1'b1;
        end else begin
            led_r[0] <= ~led_r[0];
        end
    end
    
    always @(posedge clk_250ms) begin
        if (i_sw[1]) begin
            led_r[1] <= 1'b1;
        end else begin
            led_r[1] <= ~led_r[1];
        end
    end
    
    // Number to Prog Text ROM
    wire [4:0] addr_score_d3 = score_p1[7:4] + OFFSET_MEM_NUMERIC;
    wire [4:0] addr_score_d2 = score_p1[3:0] + OFFSET_MEM_NUMERIC;
    wire [4:0] addr_score_d1 = score_p2[7:4] + OFFSET_MEM_NUMERIC;
    wire [4:0] addr_score_d0 = score_p2[3:0] + OFFSET_MEM_NUMERIC;
    
    // LEDs ///////////////////////////////////////////////////
    assign led = led_r;
    initial led_r = 0;
    
    // Quad 7-Segment Display /////////////////////////////////
    wire [3:0] digits [3:0];
    wire [15:0] all_digits;
    
    quad_7_seg seven_seg_display(
        .seg(seg), 
        .an(an), 
        .dp(dp), 
        .clk(clk_disp), 
        .num3(digits[3]), 
        .num2(digits[2]), 
        .num1(digits[1]), 
        .num0(digits[0]),
        .dot_in(4'b0100)
    );
    
    assign {digits[3], digits[2], digits[1], digits[0]} = all_digits;
    
    // VGA Display ////////////////////////////////////////////
    reg [VGA_COLOR_DEPTH - 1:0] vga_r;
    reg [VGA_COLOR_DEPTH - 1:0] vga_g;
    reg [VGA_COLOR_DEPTH - 1:0] vga_b;
    
    initial begin
        vga_r <= 0;
        vga_g <= 0;
        vga_b <= 0;
    end
    
    wire vga_tick;
    wire vga_on;
    wire [9:0] vga_pos_x;
    wire [9:0] vga_pos_y;
    
    // VGA Synchronizer ///////////////////////////////////////
    // For 640x480 60 Hz at 25 MHz Pixel Refresh
    vga_sync #(
        .H_DISPLAY(VGA_RES_WIDTH),
        .V_DISPLAY(VGA_RES_HEIGHT),
        .H_BACK_PORCH(48),
        .H_FRONT_PORCH(16),
        .H_SYNC_PULSE(96),
        .V_BACK_PORCH(33),
        .V_FRONT_PORCH(10),
        .V_SYNC_PULSE(2)
//        .H_FRONT_PORCH(40),
//        .H_BACK_PORCH(88),
//        .H_SYNC_PULSE(128),
//        .V_FRONT_PORCH(1),
//        .V_BACK_PORCH(23),
//        .V_SYNC_PULSE(4)

    ) main_vga_sync(
        .hsync(Hsync),
        .vsync(Vsync),
        .video_on(vga_on),
        .p_tick(vga_tick),
        .x(vga_pos_x),
        .y(vga_pos_y),
        .clk(CLK_25MHZ),
        .reset(reset_vga | key_release[KEY_F5])
    );
    
    // Video Memory (VRAM) ////////////////////////////////////
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_ra;
    wire [VGA_VRAM_ADDR_BITS - 1:0] vram_wa;
    wire vram_we;
    
    wire [GPU_COLOR_BITS - 1:0] vram_data_out;
    wire [GPU_COLOR_BITS - 1:0] vram_data_in;
    
    ram_block #(
        .RAM_WIDTH(GPU_COLOR_BITS),
        .RAM_ADDR_BITS(VGA_VRAM_ADDR_BITS)
    ) main_vga_vram_buffer(
        .data_out(vram_data_out),
        .data_in(vram_data_in),
        .wa(vram_wa),
        .ra(vram_ra),
        .clk(sys_clk),
        .we(vram_we)
    );
    
    // VRAM-VGA Pixel Mapping /////////////////////////////////
    always @(posedge vga_tick) begin
        vga_r <= (vram_data_out[2]) ? 4'hF : 4'h0;
        vga_g <= (vram_data_out[1]) ? 4'hF : 4'h0;
        vga_b <= (vram_data_out[0]) ? 4'hF : 4'h0;
    end
    
    assign {vgaRed, vgaGreen, vgaBlue} = (vga_on) ? {vga_r, vga_g, vga_b} : 12'h000;
    
    // Graphics Renderer //////////////////////////////////////
    wire [9:0] gpu_pos_x;
    wire [9:0] gpu_pos_y;
    
    assign gpu_frame_tick = (gpu_pos_x == 0) && (gpu_pos_y == 0);
    
    graphics_renderer #(
        .CANVAS_WIDTH(VGA_RES_WIDTH),
        .CANVAS_HEIGHT(VGA_RES_HEIGHT)
    ) graphics_renderer_inst(
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .clk(sys_clk),
        .reset(reset_vga)
    );
    
    // GPU-VRAM-VGA Read/Write Address ////////////////////////
    // Read: Direct VRAM to VGA
    // Write: Direct GPU to VRAM
    assign vram_ra = (vga_pos_y * VGA_RES_WIDTH) + vga_pos_x;
    assign vram_wa = (gpu_pos_y * VGA_RES_WIDTH) + gpu_pos_x;
    
    // Graphics Layer using Priority MUX //////////////////////
    wire [(GRAPHICS_LAYERS * GPU_COLOR_BITS) - 1:0] gp_data_flatten;
    wor [GPU_COLOR_BITS - 1:0] gp_data[GRAPHICS_LAYERS - 1:0];
    wor [GRAPHICS_LAYERS - 1:0] gp_layer;
    
    assign vram_we = |gp_layer;
    
    pixel_overlay #(
        .LAYERS(GRAPHICS_LAYERS),
        .DATA_WIDTH(GPU_COLOR_BITS)
    ) overlay_inst(
        .out_data(vram_data_in),
        .data(gp_data_flatten),
        .select(gp_layer)
    );
    
    generate
        for (i = 0; i < GRAPHICS_LAYERS; i = i + 1) begin
            assign gp_data_flatten[GPU_COLOR_BITS * i +: GPU_COLOR_BITS] = gp_data[i];
        end
    endgenerate
    
    // Text Renderer //////////////////////////////////////////
    reg blink_text;
    
    always @(posedge clk_500ms) begin
        blink_text <= ~blink_text;
    end
    
    localparam DATA_WIDTH  = 10 + 10 + 3 + GPU_COLOR_BITS + GPU_COLOR_BITS + 1 + $clog2(MAX_NUM_STR);
    
    wire [9:0] tc_start_x [STR_PER_FRAME - 1:0];
    wire [9:0] tc_start_y [STR_PER_FRAME - 1:0];
    wire [2:0] tc_scale [STR_PER_FRAME - 1:0];
    wire [GPU_COLOR_BITS - 1:0] tc_fg_color [STR_PER_FRAME - 1:0];
    wire [GPU_COLOR_BITS - 1:0] tc_bg_color [STR_PER_FRAME - 1:0];
    wire tc_transparent_bg [STR_PER_FRAME - 1:0];
    wire [$clog2(MAX_NUM_STR) - 1:0] tc_line_addr [STR_PER_FRAME - 1:0];
    wire [(4 * DATA_WIDTH) - 1:0] tc_data [STR_PER_FRAME - 1:0];
    
    generate
        for (i = 0; i < STR_PER_FRAME; i = i + 1) begin
            text_renderer #(
                .GPU_COLOR_BITS(GPU_COLOR_BITS),
                .CHAR_BASE_WIDTH(8),
                .CHAR_BASE_HEIGHT(16),
                .MAX_STRLEN(16),
                .MAX_NUM_STR(MAX_NUM_STR),
                .TEXT_ROM_FILE("rom_prog_text.mem")
            ) text_renderer_inst(
                .pixel_data(gp_data[GP_TEXT_FG1 - i]),
                .pixel_on(gp_layer[GP_TEXT_FG1 - i]),
                .x(gpu_pos_x),
                .y(gpu_pos_y),
                .start_x(tc_start_x[i]),
                .start_y(tc_start_y[i]),
                .scale(tc_scale[i]),
                .fg_color(tc_fg_color[i]),
                .bg_color(tc_bg_color[i]),
                .transparent_bg(tc_transparent_bg[i]),
                .line_addr(tc_line_addr[i]),
                .clk(sys_clk),
                .en(1'b1)
            );
            
            text_context #(
                .GPU_COLOR_BITS(GPU_COLOR_BITS),
                .MAX_NUM_STR(MAX_NUM_STR),
                .MAX_NUM_STATES(4)
            ) tc_fg_inst(
                .start_x(tc_start_x[i]),
                .start_y(tc_start_y[i]),
                .scale(tc_scale[i]),
                .fg_color(tc_fg_color[i]),
                .bg_color(tc_bg_color[i]),
                .transparent_bg(tc_transparent_bg[i]),
                .line_addr(tc_line_addr[i]),
                .rom_data(tc_data[i]),
                .state(glob_state)
            );
        end
    endgenerate
    
    // String in State 3 (String 0)
    // String in State 2 (String 0)
    // String in State 1 (String 0)
    // String in State 0 (String 0)
    // [0] has the first pririty (foremost).
    // [3] has the last priority.
    
    // START_X, START_Y, SCALE, FOREGROUND, BACKGROUND, TRANSPARENT?, STRING_ADDRESS
    // {10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0}
    
    // Warning: May introduce timing failure from many duplicate large LUTs and/or ROMs
    // due to slow clock and simple render algorithm.
    
    assign tc_data[0] = {{10'd80, 10'd192, 3'd6, COLOR3WHITE, COLOR3BLACK, 1'b0, 5'd8},  
                         {10'd480, 10'd32, 3'd4, COLOR_NUMBERS, C3NUL, 1'b1, addr_score_d0},
                         {10'd208, 10'd300, 3'd2, COLOR3BLACK, C3NUL, 1'b1, 5'd6},
                         {10'd216, 10'd320, 3'd2, COLOR3BLACK, C3NUL, 1'b1, blink_text ? 5'd5 : 5'd0}};

    assign tc_data[1] = {{10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0},  
                         {10'd448, 10'd32, 3'd4, COLOR_NUMBERS, C3NUL, 1'b1, addr_score_d1},
                         {10'd208, 10'd332, 3'd2, COLOR3BLACK, C3NUL, 1'b1, 5'd7},
                         {10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0}};

    assign tc_data[2] = {{10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0},  
                         {10'd160, 10'd32, 3'd4, COLOR_NUMBERS, C3NUL, 1'b1, addr_score_d2},
                         {10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0},
                         {10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0}};

    assign tc_data[3] = {{10'd0, 10'd0, 3'd1, C3NUL, C3NUL, 1'b0, 5'd0},  
                         {10'd128, 10'd32, 3'd4, COLOR_NUMBERS, C3NUL, 1'b1, addr_score_d3},
                         {10'd20, 10'd444, 3'd1, COLOR3RED, C3NUL, 1'b1, 5'd20},
                         {10'd20, 10'd444, 3'd1, COLOR3RED, C3NUL, 1'b1, 5'd20}};
    
    // Popup "[SPACE] CONTINUE" in the middle of the game
    wire popup_sel;
    
    assign gp_layer[GP_TEXT_FG0] = popup_sel && (game_state == 2'b10) && blink_text;
    
    text_renderer #(
            .GPU_COLOR_BITS(GPU_COLOR_BITS),
            .CHAR_BASE_WIDTH(8),
            .CHAR_BASE_HEIGHT(16),
            .MAX_STRLEN(16),
            .MAX_NUM_STR(MAX_NUM_STR),
            .TEXT_ROM_FILE("rom_prog_text.mem")
        ) popup_text_renderer_inst(
            .pixel_data(gp_data[GP_TEXT_FG0]),
            .pixel_on(popup_sel),
            .x(gpu_pos_x),
            .y(gpu_pos_y),
            .start_x((VGA_RES_WIDTH - (16 * 8 * 2)) / 2),
            .start_y(320),
            .scale(2),
            .fg_color(COLOR3BLACK),
            .bg_color(COLOR3WHITE),
            .transparent_bg(0),
            .line_addr(21),
            .clk(sys_clk),
            .en(1'b1)
        );
    
    // Game Objects Renderer //////////////////////////////////
    // Render Ball
    
    wire [1:0] ball_sel;
    generate
        for (i = 0; i < 2; i = i + 1) begin
            assign gp_layer[GP_BALL] = ball_sel[i] & ~ball_status[i];
            bitmap_renderer #(
                .GPU_COLOR_BITS(GPU_COLOR_BITS),
                .GPU_ALPHA_CHANNEL(1),
                .IMAGE_WIDTH(IMAGE_BALL_W),
                .IMAGE_HEIGHT(IMAGE_BALL_H),
                .IMAGE_ROM_FILE("rom_ball_texture.mem")
            ) ball_renderer_inst(
                .pixel_data(gp_data[GP_BALL]),
                .pixel_on(ball_sel[i]),
                .x(gpu_pos_x),
                .y(gpu_pos_y),
                .start_x(ball_px[i]),
                .start_y(ball_py[i]),
                .scale(3'd1),
                .clk(sys_clk),
                .en(1'b1)
            );
        end
    endgenerate
    
    // Render Paddle 1
    rectangle_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .RECT_WIDTH(IMAGE_PADDLE_W),
        .RECT_HEIGHT(IMAGE_PADDLE_H)
    ) paddle1_renderer_inst(
        .pixel_data(gp_data[GP_PADDLE]),
        .pixel_on(gp_layer[GP_PADDLE]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(pad1_px),
        .start_y(pad1_py),
        .color(COLOR3BLUE),
        .clk(sys_clk),
        .en(1'b1)
    );
    
    // Render Paddle 2
    rectangle_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .RECT_WIDTH(IMAGE_PADDLE_W),
        .RECT_HEIGHT(IMAGE_PADDLE_H)
    ) paddle2_renderer_inst(
        .pixel_data(gp_data[GP_PADDLE]),
        .pixel_on(gp_layer[GP_PADDLE]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(pad2_px),
        .start_y(pad2_py),
        .color(COLOR3BLUE),
        .clk(sys_clk),
        .en(1'b1)
    );
    
    // Render Pong in Thai
    bitmap_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .GPU_ALPHA_CHANNEL(1),
        .IMAGE_WIDTH(320),
        .IMAGE_HEIGHT(240),
        .IMAGE_ROM_FILE("pong_text.mem")
    ) background_logo_renderer_inst(
        .pixel_data(gp_data[GP_TEXT_BG]),
        .pixel_on(gp_layer[GP_TEXT_BG]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(VGA_RES_WIDTH / 4),
        .start_y(VGA_RES_HEIGHT / 4),
        .scale(3'd1),
        .clk(sys_clk),
        .en(1'b1)
    );
    
    // Render Hamtaro background
    wire god_mode;
    
    assign gp_layer[GP_GRAPHICS] = god_mode && i_sw[1];
    
    bitmap_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .GPU_ALPHA_CHANNEL(0),
        .IMAGE_WIDTH(320),
        .IMAGE_HEIGHT(240),
        .IMAGE_ROM_FILE("pong_bg.mem")
    ) background_graphics_renderer_inst(
        .pixel_data(gp_data[GP_GRAPHICS]),
        .pixel_on(god_mode),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(0),
        .start_y(0),
        .scale(2),
        .clk(sys_clk),
        .en(1'b1)
    );
    
    // Render Game Background
    rectangle_renderer #(
        .GPU_COLOR_BITS(GPU_COLOR_BITS),
        .RECT_WIDTH(VGA_RES_WIDTH),
        .RECT_HEIGHT(VGA_RES_HEIGHT)
    ) background_renderer_inst(
        .pixel_data(gp_data[GP_BACKGROUND]),
        .pixel_on(gp_layer[GP_BACKGROUND]),
        .x(gpu_pos_x),
        .y(gpu_pos_y),
        .start_x(10'd0),
        .start_y(10'd0),
        .color(COLOR3CYAN),
        .clk(sys_clk),
        .en(1'b1)
    );
    
    // UART Controller ////////////////////////////////////////
    wire baud;
    wire received, sent;
    wire [7:0] uart_data_rx;
    reg [7:0] uart_data_tx;
    reg en_write_uart;

    baudrate_generator #(
        .BASE_CLOCK(BASE_CORE_CLOCK),
        .BAUDRATE(9_600)
    ) main_uart_baudrate_generator(
        .baud(baud),
        .base_clk(sys_clk)
    );
    
    uart_tx usb_rs232_tx(
        .dout(RsTx),
        .is_sent(sent),
        .din(uart_data_tx),
        .en(en_write_uart),
        .baud_clk(baud)
    );
    
    uart_rx usb_rs232_rx(
        .dout(uart_data_rx),
        .is_received(received),
        .din(RsRx),
        .baud_clk(baud)
    );

    initial begin
        en_write_uart <= 1'b0;
    end

    // Temporary: received status 0 to 1 = new data
    reg received_old;
    wire has_new_data = !received_old && received;
    always @(posedge baud) begin
        // Disable Tx
        if (en_write_uart == 1'b1) begin
            en_write_uart <= 1'b0;
        end
        
        if (has_new_data) begin
            // If received, do something.
            uart_data_tx <= uart_data_rx;
            
            // Enable Tx to send something.
            en_write_uart <= 1'b1;
        end
        
        // Update the temporary
        received_old <= received;
    end
    
    // Post-Assignment ////////////////////////////////////////
    assign {digits[1], digits[0]} = score_p2;
    assign {digits[3], digits[2]} = score_p1;
    
endmodule
