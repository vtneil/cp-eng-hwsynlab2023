`timescale 1ns / 1ps

module quad_7_seg(
    output wire [6:0] seg,
    output reg [3:0] an,
    output wire dp,
    input wire clk,
    input wire [3:0] num3,
    input wire [3:0] num2,
    input wire [3:0] num1,
    input wire [3:0] num0,
    input wire [3:0] dot_in
);
    reg [1:0] q;
    reg [3:0] nums;
    reg dp_r;
    
    hex_to_7_seg hex7seg(seg, nums);
    
    always @(posedge clk) q <= q + 1;
    
    always @(q) begin
        case (q)
            2'b00: begin
                nums = num3;
                dp_r = dot_in[3];
                an = 4'b0111;
            end
            2'b01: begin
                nums = num2;
                dp_r = dot_in[2];
                an = 4'b1011;
            end
            2'b10: begin
                nums = num1;
                dp_r = dot_in[1];
                an = 4'b1101;
            end
            2'b11: begin
                nums = num0;
                dp_r = dot_in[0];
                an = 4'b1110;
            end
        endcase
    end
    
    assign dp = ~dp_r;
    
endmodule
