`timescale 1ns / 1ps

module keyboard #(
    parameter DUMMY = 0
) (
    output wire [15:0] keycode,
    output wire [255:0] key_states,
    output wire [255:0] key_press,
    output wire [255:0] key_release,
    input wire ps2_clk,
    input wire ps2_data,
    input wire clk_50mhz,
    input wire clk
);
    
    wire flag;
    reg [255:0] key_status;
    
    assign key_states = key_status;
    
    initial key_status <= 0;
    
    ps2_receiver ps2_usb_keyboard(
        .clk(clk_50mhz),
        .kclk(ps2_clk),
        .kdata(ps2_data),
        .keycode(keycode),
        .oflag(flag)
    );
    
    reg [15:0] keycodev = 0;
    reg cn = 0;
    
    always @(keycode) begin
        if (keycode[7:0] == 8'hf0) begin
            cn <= 1'b0;
        end else if (keycode[15:8] == 8'hf0) begin
            cn <= keycode != keycodev;
        end else begin
            cn <= keycode[7:0] != keycodev[7:0] || keycodev[15:8] == 8'hf0;
        end
    end
    
    always @(posedge clk) begin
        if (flag == 1'b1 && cn == 1'b1) begin
            if (keycode[15:8] == 8'hF0) begin
                key_status[keycode[7:0]] <= 0;
            end else begin
                key_status[keycode[7:0]] <= 1;
            end
            keycodev <= keycode;
        end
    end
    
    key_press_detector key_press_pulse_gen(
        .key_state(key_states),
        .clk(clk),
        .key_pressed(key_press)
    );
    
    key_release_detector key_release_pulse_gen(
        .key_state(key_states),
        .clk(clk),
        .key_released(key_release)
    );

endmodule

module key_press_detector #(
    parameter WIDTH = 256
) (
    input [WIDTH - 1:0] key_state,
    input clk,
    output reg [WIDTH - 1:0] key_pressed
);

    reg [WIDTH - 1:0] key_state_prev;
    
    initial key_state_prev = 0;

    always @(posedge clk) begin : edge_detection
        integer i;
        for (i = 0; i < WIDTH; i = i + 1) begin
            if (!key_state_prev[i] && key_state[i]) begin
                key_pressed[i] <= 1'b1;
            end else begin
                key_pressed[i] <= 1'b0;
            end
        end

        key_state_prev <= key_state;
    end

endmodule

module key_release_detector #(
    parameter WIDTH = 256
) (
    input [WIDTH - 1:0] key_state,
    input clk,
    output reg [WIDTH - 1:0] key_released
);

    reg [WIDTH - 1:0] key_state_prev;
    
    initial key_state_prev = 0;

    always @(posedge clk) begin : edge_detection
        integer i;
        for (i = 0; i < WIDTH; i = i + 1) begin
            if (key_state_prev[i] && !key_state[i]) begin
                key_released[i] <= 1'b1;
            end else begin
                key_released[i] <= 1'b0;
            end
        end

        key_state_prev <= key_state;
    end

endmodule
