`timescale 1ns / 1ps

module uart_rx #(
    parameter CLOCK_SPEED = 100_000_000,
    parameter BAUD_RATE = 9600,
    parameter DATA_BITS = 8
) (
    output wire [DATA_BITS - 1:0] rx_byte,
    output wire rx_cplt,
    input wire rx_data_in,
    input wire clk
);
    
    localparam CLK_PER_BIT        = CLOCK_SPEED / BAUD_RATE / (DATA_BITS + 2);
    localparam COUNTER_WIDTH      = $clog2(DATA_BITS);
    
    localparam STATE_IDLE         = 3'b000;
    localparam STATE_RX_START_BIT = 3'b001;
    localparam STATE_RX_DATA_BITS = 3'b011;
    localparam STATE_RX_STOP_BIT  = 3'b010;
    localparam STATE_CLEANUP      = 3'b110;
    
    reg rx_data_tmp;
    reg rx_data;
    
    reg [$clog2(CLK_PER_BIT):0] clk_cnt;
    reg [COUNTER_WIDTH - 1:0] idx;
    reg [2:0] state;
    reg [DATA_BITS - 1:0] rx_b;
    reg cplt;
    
    reg preclock;
    
    always @(posedge clk) begin
        rx_data_tmp <= rx_data_in;
        rx_data <= rx_data_tmp;
    end
    
    always @(posedge clk) begin
        case (state)
            STATE_IDLE: begin
                preclock <= 1'b0;
                cplt <= 1'b0;
                clk_cnt <= 'd0;
                idx <= 'd0;
                if (rx_data == 1'b0) begin
                    state <= STATE_RX_START_BIT;
                end else begin
                    state <= STATE_IDLE;
                end
            end
            
            STATE_RX_START_BIT: begin
                if (clk_cnt == (CLK_PER_BIT - 1) >> 1) begin
                    if (rx_data == 1'b0) begin
                        clk_cnt <= 'd0;
                        state <= STATE_RX_DATA_BITS;
                    end else begin
                        state <= STATE_IDLE;
                    end
                end else begin
                    clk_cnt <= clk_cnt + 1;
                    state <= STATE_RX_START_BIT;
                end
            end
            
            STATE_RX_DATA_BITS: begin
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1;
                    state <= STATE_RX_DATA_BITS;
                end else begin
                    clk_cnt <= 'd0;
                    rx_b[idx] <= rx_data;
                    if (idx < DATA_BITS - 1) begin
                        idx <= idx + 1;
                        state <= STATE_RX_DATA_BITS;
                    end else begin
                        idx <= 0;
                        state <= STATE_RX_STOP_BIT;
                    end
                end
            end
            
            STATE_RX_STOP_BIT: begin
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1;
                    state <= STATE_RX_STOP_BIT;
                end else begin
                    cplt <= 1'b1;
                    clk_cnt <= 'd0;
                    state <= STATE_CLEANUP;
                end
            end
            
            STATE_CLEANUP: begin  // 2 clock rx_cplt bit high
                case (preclock)
                    1'b0: begin
                        state <= STATE_CLEANUP;
                        cplt <= 1'b1;
                        preclock <= 1'b1;
                    end
                    1'b1: begin
                        state <= STATE_IDLE;
                        cplt <= 1'b0;
                        preclock <= 1'b0;
                    end
                endcase
            end
            
            default:
                state <= STATE_IDLE;
        endcase
    end
    
    assign rx_cplt = cplt;
    assign rx_byte = rx_b;
    
endmodule

module uart_tx #(
    parameter CLOCK_SPEED = 100_000_000,
    parameter BAUD_RATE = 9600,
    parameter DATA_BITS = 8
) (
    output wire tx_active,
    output reg tx_serial,
    output wire tx_cplt,
    input wire [DATA_BITS - 1:0] tx_byte,
    input wire tx_en,
    input wire clk
);

    localparam CLK_PER_BIT        = CLOCK_SPEED / BAUD_RATE / (DATA_BITS + 2);
    localparam COUNTER_WIDTH      = $clog2(DATA_BITS);
    
    localparam STATE_IDLE         = 3'b000;
    localparam STATE_TX_START_BIT = 3'b001;
    localparam STATE_TX_DATA_BITS = 3'b011;
    localparam STATE_TX_STOP_BIT  = 3'b010;
    localparam STATE_CLEANUP      = 3'b110;
    
    reg [$clog2(CLK_PER_BIT):0] clk_cnt;
    reg [COUNTER_WIDTH - 1:0] idx;
    reg [2:0] state;
    reg [DATA_BITS - 1:0] tx_data;
    reg active;
    reg cplt;
    reg tx_enb;
    
    reg preclock;
    
    always @(posedge clk) tx_enb <= tx_en;
    
    always @(posedge clk) begin
        case (state)
            STATE_IDLE: begin
                preclock <= 1'b0;
                tx_serial <= 1'b1;
                cplt <= 1'b0;
                clk_cnt <= 'd0;
                idx <= 'd0;
                if (tx_enb == 1'b1) begin
                    active <= 1'b1;
                    tx_data <= tx_byte;
                    state <= STATE_TX_START_BIT;
                end else begin
                    state <= STATE_IDLE;
                end
            end
            
            STATE_TX_START_BIT: begin
                tx_serial <= 1'b0;
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1;
                    state <= STATE_TX_START_BIT;
                end else begin
                    clk_cnt <= 'd0;
                    state <= STATE_TX_DATA_BITS;
                end
            end
            
            STATE_TX_DATA_BITS: begin
                tx_serial <= tx_data[idx];
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1;
                    state <= STATE_TX_DATA_BITS;
                end else begin
                    clk_cnt <= 'd0;
                    if (idx < DATA_BITS - 1) begin
                        idx <= idx + 1;
                        state <= STATE_TX_DATA_BITS;
                    end else begin
                        idx <= 'd0;
                        state <= STATE_TX_STOP_BIT;
                    end
                end
            end
            
            STATE_TX_STOP_BIT: begin
                tx_serial <= 1'b1;
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1;
                    state <= STATE_TX_STOP_BIT;
                end else begin
                    cplt <= 1'b1;
                    clk_cnt <= 'd0;
                    state <= STATE_CLEANUP;
                    active <= 1'b0;
                end
            end
            
            STATE_CLEANUP: begin  // 2 clock rx_cplt bit high
                case (preclock)
                    1'b0: begin
                        state <= STATE_CLEANUP;
                        cplt <= 1'b1;
                        preclock <= 1'b1;
                    end
                    1'b1: begin
                        state <= STATE_IDLE;
                        cplt <= 1'b0;
                        preclock <= 1'b0;
                    end
                endcase
            end
            
            default:
                state <= STATE_IDLE;
        endcase
    end
    
    assign tx_cplt = cplt;
    assign tx_active = active;

endmodule