`timescale 1ns / 1ps

module quad_7_seg(output wire [6:0] seg,
                  output wire [3:0] an,
                  input wire clk,
                  input wire [3:0] num3,
                  input wire [3:0] num2,
                  input wire [3:0] num1,
                  input wire [3:0] num0);
    reg [1:0] q;
    reg [3:0] nums;
    
    hex_to_7_seg hex7seg(seg, nums);
    
    assign an = ~{~q[1] & ~q[0], ~q[1] & q[0], q[1] & ~q[0], q[1] & q[0]};
    
    always @(posedge clk) q = q + 1;
    
    always @(q) begin
        case (q)
            2'b00: nums = num3;
            2'b01: nums = num2;
            2'b10: nums = num1;
            2'b11: nums = num0;
        endcase
    end
endmodule
