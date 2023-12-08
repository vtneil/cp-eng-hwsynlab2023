`timescale 1ns / 1ps

module text_context #(
    parameter GPU_COLOR_BITS    = 3,
    parameter MAX_NUM_STR       = 16,
    parameter MAX_NUM_STATES    = 4,
    localparam STATE_ADDR       = $clog2(MAX_NUM_STATES),
    localparam DATA_WIDTH       = 10 + 10 + 3 + GPU_COLOR_BITS + GPU_COLOR_BITS + 1 + $clog2(MAX_NUM_STR)
) (
    output wire [9:0] start_x,
    output wire [9:0] start_y,
    output wire [2:0] scale,
    output wire [GPU_COLOR_BITS - 1:0] fg_color,
    output wire [GPU_COLOR_BITS - 1:0] bg_color,
    output wire transparent_bg,
    output wire [$clog2(MAX_NUM_STR) - 1:0] line_addr,
    input wire [(MAX_NUM_STATES * DATA_WIDTH) - 1:0] rom_data,
    input wire [STATE_ADDR - 1:0] state
);
    
    reg [DATA_WIDTH - 1:0] data_line;
    
    integer i;
    always @(*) begin
        for (i = 0; i < (1 << STATE_ADDR); i = i + 1) begin
            if (state == i)
                data_line = rom_data[DATA_WIDTH * i +: DATA_WIDTH];
        end
    end
    
    assign {start_x, start_y, scale, fg_color, bg_color, transparent_bg, line_addr} = data_line;

endmodule
