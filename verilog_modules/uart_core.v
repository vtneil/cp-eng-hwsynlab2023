`timescale 1ns / 1ps

module uart_core #(
    parameter CLOCK_SPEED = 100_000_000,
    parameter BAUD_RATE = 115200,
    parameter DATA_BITS = 8,
    parameter BUFFER_SIZE = 256
) (
    output wire [DATA_BITS - 1:0] data_out,
    output wire port_tx,
    output wire tx_cplt,
    output wire tx_full,
    output wire tx_empty,
    output wire rx_cplt,
    output wire rx_full,
    output wire rx_empty,
    input wire [DATA_BITS - 1:0] data_in,
    input wire port_rx,
    input wire pulse_rx,
    input wire pulse_tx,
    input wire clk,
    input wire nrst
);

    wire dclk;
    clk_div cdd(dclk, clk, 32'd10);
    
    // Tx Part
    wire [DATA_BITS - 1:0] tx_data;
    wire tx_active;
    wire tx_ready;
    
    assign tx_ready = !tx_active;
    
    uart_tx #(
        .CLOCK_SPEED(CLOCK_SPEED),
        .BAUD_RATE(BAUD_RATE),
        .DATA_BITS(DATA_BITS)
    ) tx_handler(
        .tx_active(tx_active),
        .tx_serial(port_tx),
        .tx_cplt(tx_cplt),
        .tx_byte(tx_data),
        .tx_en(tx_ready),
        .clk(clk)
    );
    
    sync_fifo #(
        .DEPTH(BUFFER_SIZE),
        .DATA_WIDTH(DATA_BITS)
    ) tx_fifo(
        .data_out(tx_data),
        .full(tx_full),
        .empty(tx_empty),
        .data_in(data_in),
        .clk(clk),
        .nrst(nrst),
        .w_en(pulse_tx),
        .r_en(tx_ready)
    );
    
    // Rx Part
    wire [DATA_BITS - 1:0] rx_data;
    
    uart_rx #(
        .CLOCK_SPEED(CLOCK_SPEED),
        .BAUD_RATE(BAUD_RATE),
        .DATA_BITS(DATA_BITS)
    ) rx_handler(
        .rx_byte(rx_data),
        .rx_cplt(rx_cplt),
        .rx_data_in(port_rx),
        .clk(clk)
    );
    
    sync_fifo #(
        .DEPTH(BUFFER_SIZE),
        .DATA_WIDTH(DATA_BITS)
    ) rx_fifo(
        .data_out(data_out),
        .full(rx_full),
        .empty(rx_empty),
        .data_in(rx_data),
        .clk(clk),
        .nrst(nrst),
        .w_en(rx_cplt),
        .r_en(pulse_rx)
    );
    
endmodule