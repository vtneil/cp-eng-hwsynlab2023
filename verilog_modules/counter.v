`timescale 1ns / 1ps

module counter #(
    parameter BIT_WIDTH = 32
) (
    output reg clk_out,
    output wire [BIT_WIDTH - 1:0] cnt_out,
    input wire clk_in,
    input wire [BIT_WIDTH - 1:0] target,
    input wire reset
);

    reg [BIT_WIDTH - 1:0] counter;
    
    initial begin
        counter <= 0;
        clk_out <= 1'b0;
    end
    
    always @(posedge clk_in, posedge reset) begin
        if (reset) begin
            counter <= 0;
        end else begin
            if (counter < target) begin
                counter <= counter + 1;
            end else begin
                counter <= 0;
                clk_out <= ~clk_out;
            end
        end
    end
    
    assign cnt_out = counter;
    
endmodule
