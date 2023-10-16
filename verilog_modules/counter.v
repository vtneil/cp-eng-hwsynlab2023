`timescale 1ns / 1ps

module counter #(
    parameter BIT_WIDTH = 32
) (
    output reg clk_out,
    input wire clk_in,
    input wire [BIT_WIDTH - 1:0] target
);

    reg [BIT_WIDTH - 1:0] counter;
    
    initial begin
        counter <= 'd0;
        clk_out <= 1'b0;
    end
    
    always @(posedge clk_in) begin
        if (counter < target) begin
            counter <= counter + 1;
        end else begin
            counter <= 'd0;
            clk_out <= ~clk_out;
        end
    end
endmodule
