`timescale 1ns / 1ps

module counter_d99(
    output wire [3:0] d1,
    output wire [3:0] d0,
    input wire d_inc,
    input wire d_clr,
    input wire clk,
    input wire reset
);

    reg [3:0] rd1;
    reg [3:0] rd0;
    reg [3:0] d1_next;
    reg [3:0] d0_next;
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            rd1 <= 0;
            rd0 <= 0;
        end else begin
            rd1 <= d1_next;
            rd0 <= d0_next;
        end
    end
    
    always @(*) begin
        d1_next = rd1;
        d0_next = rd0;
        
        if (d_clr) begin
            d1_next = 0;
            d0_next = 0;
        end else if (d_inc) begin
            if (rd0 == 9) begin
                d0_next = 0;
                if (rd1 == 9) begin
                    d1_next = 0;
                end else begin
                    d1_next = rd1 + 1;
                end
            end else begin
                d0_next = rd0 + 1;
            end
        end
    end
    
    assign d1 = rd1;
    assign d0 = rd0;

endmodule
