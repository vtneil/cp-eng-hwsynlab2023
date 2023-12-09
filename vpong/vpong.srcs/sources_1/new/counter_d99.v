`timescale 1ns / 1ps

module counter_d99(
    output wire [3:0] d1,
    output wire [3:0] d0,
    input wire clk,
    input wire reset
);

    reg [3:0] rd1;
    reg [3:0] rd0;
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            rd1 <= 0;
            rd0 <= 0;
        end else begin
            if (rd0 == 9) begin
                rd0 <= 0;
                if (rd1 == 9) begin
                    rd1 <= 0;
                end else begin
                    rd1 <= rd1 + 1;
                end
            end else begin
                rd0 <= rd0 + 1;
            end
        end
    end
    
    assign d1 = rd1;
    assign d0 = rd0;

endmodule
