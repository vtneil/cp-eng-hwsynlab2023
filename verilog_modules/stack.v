`timescale 1ns / 1ps

module stack #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_BITS = 8
) (
    output reg [DATA_WIDTH - 1:0] data_out,
    output reg overflow,
    output reg underflow,
    output wire [ADDR_BITS - 1:0] sp_out,
    input wire [DATA_WIDTH - 1:0] data_in,
    input wire push,
    input wire pop,
    input wire rst,
    input wire clk
);

    localparam ADDR_SIZE = 2 ** ADDR_BITS;
    
    wire [DATA_WIDTH - 1:0] ram_data_out;
    reg [ADDR_BITS - 1:0] sp;
    reg [ADDR_BITS - 1:0] fp;
    assign sp_out = sp;
    
    reg ovr;
    
    ram_block #(
        .RAM_WIDTH(DATA_WIDTH),
        .RAM_ADDR_BITS(ADDR_BITS)
    ) ram(ram_data_out, ovr ? 0 : data_in, sp, fp, clk, ovr | (push & ~overflow));
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sp <= 0;
            overflow <= 1'b0;
            underflow <= 1'b0;
            
        end else begin
            if (push & ~overflow) begin
                if (sp == ADDR_SIZE - 1) overflow <= 1'b1;
                else begin
                    fp <= sp;
                    sp <= sp + 1;
                    underflow <= 1'b0;
                    overflow <= 1'b0;
                end
            end else if (pop & ~underflow) begin
                if (sp == 0) underflow <= 1'b1;
                else begin
                    if (sp > 1) begin
                        fp <= sp - 2;
                    end else begin
                        fp <= sp - 1;
                        ovr <= 1'b1;
                    end
                    sp <= sp - 1;
                    underflow <= 1'b0;
                    overflow <= 1'b0;
                end
            end else begin
                ovr <= 1'b0; // todo
            end
            
            data_out <= ram_data_out;
        end
    end

endmodule
