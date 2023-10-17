`timescale 1ns / 1ps

module system_uart(
    output wire [15:0] led,
    output wire [6:0] seg,
    output wire dp,
    output wire [3:0] an,
    output wire RsRx,
    input wire [15:0] sw,
    input wire RsTx,
    input wire clk,
    input wire btnC
);
    parameter SYSTEM_CORE_CLOCK = 100_000_000;
    parameter UART_BAUD_RATE = 9600;
    parameter UART_DATA_BITS = 8;
    parameter UART_BUFFER_SIZE = 8;
    
    // Clocks
    wire iclk = clk;
    wire dclk;
    clk_div cdd(dclk, clk, 32'd500_000);
    
    wire clk_1hz;
    clk_div(clk_1hz, clk, 32'd100_000_000);
    
    // Display
    wire [3:0] digits [3:0];
    quad_7_seg main_display(seg, an, dp, dclk, digits[3], digits[2], digits[1], digits[0]);
    
    // Inputs
    wire btn;
    push_button(btn, btnC, iclk);
    
    wire [15:0] switches;
    switch_button #(.BUTTON_WIDTH(16)) sws(switches, sw, iclk);
    
    // Data Registers
    wire [7:0] data_rx;
    wire [7:0] data_tx;
    
    reg [7:0] rdata_rx;
    reg [7:0] rdata_tx;
    
    assign data_tx = data_rx + 8'd1;

    assign {digits[3], digits[2]} = rdata_rx;
    assign {digits[1], digits[0]} = rdata_tx;
    
    // LEDs
    assign led = {data_rx, data_tx};
        
    // State Machine and Signals
    reg sig_write;
    reg sig_read;
    
    // UART
    wire tx_cplt;
    wire tx_full;
    wire tx_empty;
    
    wire rx_cplt;
    wire rx_full;
    wire rx_empty;
    
    wire available_for_read;
    assign available_for_read = !rx_empty;
    
    uart_core #(
        .CLOCK_SPEED(SYSTEM_CORE_CLOCK),
        .BAUD_RATE(UART_BAUD_RATE),
        .DATA_BITS(UART_DATA_BITS),
        .BUFFER_SIZE(UART_BUFFER_SIZE)
    ) the_uart(
        .data_out(data_rx),
        .port_tx(RsRx),
        .tx_cplt(tx_cplt),
        .tx_full(tx_full),
        .tx_empty(tx_empty),
        .rx_cplt(rx_cplt),
        .rx_full(rx_full),
        .rx_empty(rx_empty),
        
        .data_in(data_tx),
        .port_rx(RsTx),
        .pulse_rx(sig_read),
        .pulse_tx(sig_write),
        .clk(iclk),
        .nrst(1'b1)
    );
    
    always @(posedge iclk) begin
        rdata_rx <= data_rx;
        rdata_tx <= data_tx;
        
        if (btn) begin
            sig_write <= 1'b1;
        end
    end

endmodule
