`timescale 1ns / 1ps

module bcd2421(
    output reg [3:0] seg,
    input wire [3:0] bcd
);

    always @(bcd) begin
        case (bcd)
            4'b0001 : seg <= 4'b0001;   // 1
            4'b0010 : seg <= 4'b0010;   // 2
            4'b0011 : seg <= 4'b0011;   // 3
            4'b0100 : seg <= 4'b0100;   // 4
            4'b0101 : seg <= 4'b1011;   // 5
            4'b0110 : seg <= 4'b1100;   // 6
            4'b0111 : seg <= 4'b1101;   // 7
            4'b1000 : seg <= 4'b1110;   // 8
            4'b1001 : seg <= 4'b1111;   // 9
            default : seg <= 4'b0000;   // 0
        endcase
    end

endmodule
