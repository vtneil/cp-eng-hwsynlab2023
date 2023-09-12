`timescale 1ns / 1ps

module clk_div(output reg clk_out,
               input wire clk_in,
               input wire [31:0] divisor);

    reg [31:0] counter = 32'd0;
    
    always @(posedge clk_in) begin
        counter <= counter + 32'd1;
        if (counter >= (divisor - 32'd1))
            counter <= 32'd0;
        clk_out <= (counter < (divisor >> 1)) ? 1'b1 : 1'b0;
    end
endmodule
