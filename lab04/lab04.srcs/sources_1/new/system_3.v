`timescale 1ns / 1ps

module system_3(
    output wire [15:0] led,
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    input wire clk,
    input wire [7:0] sw,
    input wire btnC,
    input wire btnU,
    input wire btnL,
    input wire btnD,
    input wire btnR
);
    
    // Parameters
    parameter CLK_DIV1 = 32'd2;
    parameter CLK_DIV2 = 32'd500_000;
    
    // Clocks
    wire iclk;
    wire dclk;
    clk_div cdi(iclk, clk, CLK_DIV1);
    clk_div cdd(dclk, clk, CLK_DIV2);
    
    // Display
    wire [3:0] digits [3:0];
    wire [15:0] digits_disp;
    assign digits_disp = {digits[3], digits[2], digits[1], digits[0]};
    quad_7_seg(seg, an, dp, dclk, digits[3], digits[2], digits[1], digits[0]);
    
    // Inputs
    wire bbtnU, bbtnL, bbtnD, bbtnR;
    push_button pbU(bbtnU, btnU, iclk);
    push_button pbL(bbtnL, btnL, iclk);
    push_button pbD(bbtnD, btnD, iclk);
    push_button pbR(bbtnR, btnR, iclk);
    
    assign led[7:0] = sw;
    assign led[13:8] = 6'b000000;
    
    wire [3:0] num_a;
    wire [3:0] num_b;
    assign {num_a, num_b} = sw;
    
    // Registers
    reg [1:0] op_mode;
    wire [7:0] result;
    
    assign led[15:14] = op_mode;
    
    // ROMs
    rom_block #(
        .MEM_INIT_FILE("calculator_4b.data"),
        .ROM_WIDTH(8),
        .ROM_ADDR_BITS(10)
    ) lut_calc4b(result, {op_mode, num_a, num_b}, iclk, 1'b1);
    
    rom_block #(
        .MEM_INIT_FILE("bin8_bcd.data"),
        .ROM_WIDTH(16),
        .ROM_ADDR_BITS(8)
    ) lut_bin8_bcd(digits_disp, result, iclk, 1'b1);
    
    always @(
        posedge bbtnU or 
        posedge bbtnL or 
        posedge bbtnD or 
        posedge bbtnR
    ) begin
        if (bbtnU) begin
            op_mode <= 2'b00;
        end else if (bbtnL) begin
            op_mode <= 2'b01;
        end else if (bbtnD) begin
            op_mode <= 2'b10;
        end else if (bbtnR) begin
            op_mode <= 2'b11;
        end
    end
endmodule
