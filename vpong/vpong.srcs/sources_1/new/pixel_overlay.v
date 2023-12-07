`timescale 1ns / 1ps

module pixel_overlay #(
    parameter LAYERS = 16,
    parameter DATA_WIDTH = 3
) (
    output reg [DATA_WIDTH - 1:0] out_data,
    input wire [(LAYERS * DATA_WIDTH) - 1:0] data,
    input wire [LAYERS - 1:0] select
);
    
    // Priority MUX Implementation ////////////////////////////
    // MSB = Higher priority [Foreground]
    // LSB = Lower priority [Background]
    
    integer i;

    always @(*) begin
        out_data = 0;
        for (i = 0; i < LAYERS; i = i + 1) begin
            if (select[i]) begin
                out_data = data[i * DATA_WIDTH +: DATA_WIDTH];
            end
        end
    end

endmodule
