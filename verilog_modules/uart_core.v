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
    
    wire sig_rx, sig_tx;
    single_pulser sp_tx(sig_tx, pulse_tx, clk);
    single_pulser sp_rx(sig_rx, pulse_rx, clk);
    
    wire sig_tx_delay;
    delayer del_tx(sig_tx_delay, sig_tx, clk);
    
    // Tx Part
    wire [DATA_BITS - 1:0] tx_data;
    wire tx_active;
    
    uart_tx #(
        .CLOCK_SPEED(CLOCK_SPEED),
        .BAUD_RATE(BAUD_RATE),
        .DATA_BITS(DATA_BITS)
    ) tx_handler(
        .tx_active(tx_active),
        .tx_serial(port_tx),
        .tx_cplt(tx_cplt),
        .tx_byte(tx_data),
        .tx_en(sig_tx_delay),
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
        .w_en(sig_tx),
        .r_en(sig_tx_delay)
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
        .r_en(sig_rx)
    );
    
endmodule