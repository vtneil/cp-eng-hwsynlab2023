`timescale 1ns / 1ps

module bcd_counter(
    output wire [3:0] s,
    output wire Cout,
    output wire Bout,
    input wire up,
    input wire down,
    input wire set9,
    input wire set0,
    input wire clk
);

    reg [3:0] v = 0;
    reg cout = 0;
    reg bout = 0;
    
    assign s = v;
    assign Cout = cout;
    assign Bout = bout;
    
    always @(posedge clk) begin
        if (set9)
            v <= 4'd9;
        else if (set0)
            v <= 4'd0;
        else begin
            cout <= 0;
            bout <= 0;

            if (up) begin
                if (v == 4'd9) begin
                    v <= 0;
                    cout <= 1;
                end
                else
                    v <= v + 1;
            end
            else if (down) begin
                if (v == 4'd0) begin
                    v <= 4'd9;
                    bout <= 1;
                end
                else
                    v <= v - 1;
            end
        end
    end
endmodule