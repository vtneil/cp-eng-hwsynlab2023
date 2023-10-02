`timescale 1ns / 1ps
//-------------------------------------------------------
// File name    : alu.v
// Title        : ALU.
// Library      : nanoLADA
// Purpose      : Computer Architecture
// Developers   : Krerk Piromsopa, Ph. D.
//              : Chulalongkorn University.

module alu(
    output reg [31:0] S,
    output wire z,
    output reg Cout,
    input wire [31:0] A,
    input wire [31:0] B,
    input wire Cin,
    input wire [2:0] alu_ops
);
    
    assign z = ~| S;
    
    always @(A or B or alu_ops)
    begin
        case (alu_ops)
        3'b001: {Cout, S} = A - B;
        3'b010: {Cout, S} = {1'b0, A | B};
        3'b011: {Cout, S} = {1'b0, A & B};
        3'b100: {Cout, S} = {1'b0, A ^ B};
        3'b101: {Cout, S} = {1'b0, -A};
        3'b110: {Cout, S} = {1'b0, ~A};
        3'b111: {Cout, S} = {1'b0, ~B};
        default: {Cout, S} = A + B + Cin;	
        endcase
    end
    
endmodule
