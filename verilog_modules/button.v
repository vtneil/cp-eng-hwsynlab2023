`timescale 1ns / 1ps

module switch_button #(
    parameter DEBOUNCE_COUNT = 32'd1_000_000,
    parameter BUTTON_WIDTH = 1
) (
    output wire [BUTTON_WIDTH - 1:0] q,
    input wire [BUTTON_WIDTH - 1:0] d,
    input wire clk
);
    
    reg [BUTTON_WIDTH - 1:0] tmp1;
    reg [BUTTON_WIDTH - 1:0] tmp2;
    wire [BUTTON_WIDTH - 1:0] dbx;
    
    always @(posedge clk) begin
        tmp1 <= d;
        tmp2 <= tmp1;
    end
    
    genvar i;
    generate
        for (i = 0; i < BUTTON_WIDTH; i = i + 1) begin
            debouncer #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT)) the_debouncer(dbx[i], tmp2[i], clk);
        end
    endgenerate
    
    assign q = dbx;
    
endmodule

module push_button #(
    parameter DEBOUNCE_COUNT = 32'd1_000_000,
    parameter BUTTON_WIDTH = 1
) (
    output wire [BUTTON_WIDTH - 1:0] q,
    input wire [BUTTON_WIDTH - 1:0] d,
    input wire clk
);
    wire [BUTTON_WIDTH - 1:0] dbx;
    
    genvar i;
    generate
        for (i = 0; i < BUTTON_WIDTH; i = i + 1) begin
            switch_button #(.DEBOUNCE_COUNT(DEBOUNCE_COUNT), .BUTTON_WIDTH(BUTTON_WIDTH)) the_switch(dbx[i], d[i], clk);
            single_pulser the_pulser(q[i], dbx[i], clk);
        end
    endgenerate

endmodule


