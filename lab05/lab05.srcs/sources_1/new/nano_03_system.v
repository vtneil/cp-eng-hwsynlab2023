`timescale 1ns / 1ps

module nano_03_system #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16,
    parameter CLK_DIV1 = 32'd2,
    parameter CLK_DIV2 = 32'd125_000
) (
    output wire [11:0] led,
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    input wire clk,
    input wire [11:0] sw,
    input wire btnC
);

    // Clocks
    wire iclk;
    wire dclk;
    clk_div clk_div_i(iclk, clk, CLK_DIV1);
    clk_div clk_div_d(dclk, clk, CLK_DIV2);
    
    // Display
    wire [3:0] digits [3:0];
    quad_7_seg(seg, an, dp, dclk, digits[3], digits[2], digits[1], digits[0]);
    
    // LEDs
    assign led = sw;
    
    // Inputs
    wire nrst;
    push_button pb_rst(~nrst, btnC, iclk);
    
    // Variables
    reg [3:0] a;
    reg [3:0] b;
    reg [7:0] c;
    reg [3:0] op_in;
    
    // CPU Wires
    wire [DATA_WIDTH - 1:0] p_address;
    wire [DATA_WIDTH - 1:0] p_data;
    wire [DATA_WIDTH - 1:0] d_address;
    wire mem_wr;
    wire [DATA_WIDTH - 1:0] d_data;
    reg iclk;
    reg nrst;
    
    // CPU
    nanocpu	main_cpu(
        p_address,
        p_data,
        d_address,
        d_data,
        mem_wr,
        iclk,
        nrst
    );
    
    // Program Memory
    rom #(
        .PROG_FILE("lab05_03.init"), 
        .ADDR_WIDTH(ADDR_WIDTH)
    ) program_memory(
        p_data, 
        p_address[ADDR_WIDTH + 1:2]
    );
    
    // Address Decoder
    wire memory_select = (d_address < 'hFFE0) ? 1'b1 : 1'b0;
    wire io_select = ~memory_select;
    wire user_memory_data = (io_select) ? {ADDR_WIDTH{1'dZ}} : d_data;
    
    // User Memory
    memory #(
        .DATA_FILE("data.list"), 
        .ADDR_WIDTH(ADDR_WIDTH)
    ) user_memory(
        user_memory_data, 
        d_address[ADDR_WIDTH + 1:2], 
        mem_wr & memory_select, 
        iclk
    );
    
    // I/O handler
    reg [3:0] digit_reg0, digit_reg1, digit_reg2, digit_reg3;
    assign digits[0] = digit_reg0;
    assign digits[1] = digit_reg1;
    assign digits[2] = digit_reg2;
    assign digits[3] = digit_reg3;
    
    reg [ADDR_WIDTH - 1:0] io_in;
    assign d_data = (mem_wr & io_select) ? io_in : {DATA_WIDTH{1'bZ}};
    
    always @(posedge iclk) begin
        if (io_select) begin
            if (mem_wr) begin
                case (d_address)
                    'hFFE0: io_in <= {DATA_WIDTH-4'b0, sw[3:0]};
                    'hFFE4: io_in <= {DATA_WIDTH-4'b0, sw[7:4]};
                    'hFFE8: io_in <= {DATA_WIDTH-4'b0, sw[11:8]};
                endcase
            end else begin
                case (d_address)
                    'hFFF0: digit_reg0 <= d_data;
                    'hFFF4: digit_reg1 <= d_data;
                    'hFFF8: digit_reg2 <= d_data;
                    'hFFFC: digit_reg3 <= d_data;
                endcase
            end
        end
    end

endmodule
