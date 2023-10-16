`timescale 1ns / 1ps

module system_uart(
    output wire [15:0] led,
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    input wire [15:0] sw,
    input wire RsRx,
    input wire RsTx,
    input wire clk,
    input wire btnC
);
    parameter SYSTEM_CORE_CLOCK = 100_000_000;
    parameter UART_BAUD_RATE = 9600;
    parameter UART_DATA_BITS = 8;
    parameter UART_BUFFER_SIZE = 64;
    
    // Clocks
    wire iclk = clk;
    wire dclk;
    clk_div cdd(dclk, iclk, 10);
    
    // Display
    wire [3:0] digits [3:0];
    quad_7_seg main_display(seg, an, dp, iclk, digits[3], digits[2], digits[1], digits[0], 4'b1111);
    
    // Inputs
    wire btn = btnC;
    wire [15:0] switches;
    switch_button #(.BUTTON_WIDTH(16)) sws(switch, sw, iclk);
    assign led = switches;
    
    // Data Registers
    wire [7:0] data_rx;
    reg [7:0] data_tx;

    assign {digits[3], digits[2]} = data_rx;
    assign {digits[1], digits[0]} = data_tx;
    
    // LEDs
//    assign led = (sw) ? 16'd0 : {data_rx, data_tx};
        
    // State Machine
    reg q;
    
    // UART
    wire tx_full;
    wire tx_empty;
    wire rx_full;
    wire rx_empty;
    wire tx_available = !tx_full | tx_empty;
    wire rx_available = !rx_empty | rx_full;
    
//    assign led[1] = rx_available;
//    assign led[0] = tx_available;
    
    reg sig_read;
    reg sig_write;
    
    uart_core #(
        .CLOCK_SPEED(SYSTEM_CORE_CLOCK),
        .BAUD_RATE(UART_BAUD_RATE),
        .DATA_BITS(UART_DATA_BITS),
        .BUFFER_SIZE(UART_BUFFER_SIZE)
    ) the_uart(
        .data_out(data_rx),
        .port_tx(RsTx),
        .tx_full(tx_full),
        .tx_empty(tx_empty),
        .rx_full(rx_full),
        .rx_empty(rx_empty),
        .data_in(data_tx),
        .port_rx(RsRx),
        .pulse_rx(sig_read),
        .pulse_tx(sig_write),
        .clk(iclk),
        .nrst(1'b1)
    );
    
    always @(btn) begin
        if (btn) begin
            sig_write <= 1'b1;
            data_tx <= "x";
        end else begin
            sig_write <= 1'b0;
            data_tx <= 'd0;
        end
    end
    
//    always @(posedge iclk) begin
//        case (q)
//            1'b0: begin
//                if (rx_available & tx_available) begin
//                    q <= 1'b1;
//                    sig_read <= 1'b1;
//                    sig_write <= 1'b1;
//                    data_tx <= data_rx + 8'b1;
//                end
//            end
            
//            1'b1: begin
//                q <= 1'b0;
//                sig_read <= 1'b0;
//                sig_write <= 1'b0;
//            end
//        endcase
//    end

endmodule
