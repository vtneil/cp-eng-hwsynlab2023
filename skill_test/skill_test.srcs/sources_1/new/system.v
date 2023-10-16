`timescale 1ns / 1ps

module system #(
    parameter CLK_DIV1 = 32'd100_000,
    parameter CLK_DIV2 = 32'd500
) (
    output wire [7:0] led,
    input wire clk
);
    
    // Clocks
    wire iclk;
    wire dclk;
    clk_div clk_div_i(iclk, clk, CLK_DIV1); // 1 ms
    clk_div clk_div_d(dclk, iclk, CLK_DIV2); // 500 ms
    
    // State Machine
    reg [3:0] q;
    bcd2421 bcd_conv(led[3:0], q);
    
    always @(posedge dclk) begin
        q <= (q + 1) % 10;
    end
    
    assign led[6:4] = 3'd0;
    assign led[7] = ((q % 2 == 0) ? 1'b0 : 1'b1);

endmodule
