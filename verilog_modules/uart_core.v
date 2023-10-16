`timescale 1ns / 1ps

module uart_core #(
    parameter CLOCK_SPEED = 100_000_000,
    parameter BAUD_RATE = 9600,
    parameter DATA_BITS = 8,
    parameter BUFFER_SIZE = 256
) (
    output wire [DATA_BITS - 1:0] data_out,
    output wire port_tx,
    output wire tx_full,
    output wire tx_empty,
    output wire rx_full,
    output wire rx_empty,
    input wire [DATA_BITS - 1:0] data_in,
    input wire port_rx,
    input wire pulse_rx,
    input wire pulse_tx,
    input wire clk,
    input wire nrst
);
    
    // Tx Part
    wire [DATA_BITS - 1:0] tx_data;
    wire tx_active;
    wire tx_cplt;
    wire tx_fifo_empty;
    wire tx_fifo_full;
    wire sig_tx;
    wire tx_ready = !tx_fifo_empty & (tx_cplt | !tx_active);
    
    single_pulser sp_sig_tx(sig_tx, pulse_tx, clk);
    
    uart_tx #(
        .CLOCK_SPEED(CLOCK_SPEED),
        .BAUD_RATE(BAUD_RATE),
        .DATA_BITS(DATA_BITS)
    ) tx_handler(
        .tx_active(tx_active),
        .tx_serial(port_tx),
        .tx_cplt(tx_cplt),
        .tx_byte(tx_data),
        .tx_en(!tx_fifo_empty),
        .clk(clk)
    );
    
    sync_fifo #(
        .DEPTH(BUFFER_SIZE),
        .DATA_WIDTH(DATA_BITS)
    ) tx_fifo(
        .data_out(tx_data),
        .full(tx_fifo_full),
        .empty(tx_fifo_empty),
        .data_in(data_in),
        .clk(clk),
        .nrst(nrst),
        .w_en(sig_tx),
        .r_en(tx_ready)
    );
    
    // Rx Part
    wire [DATA_BITS - 1:0] rx_data;
    wire rx_cplt;
    wire rx_fifo_empty;
    wire rx_fifo_full;
    wire sig_rx;
    
    single_pulser sp_sig_rx(sig_rx, pulse_rx, clk);
    
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
        .full(rx_fifo_full),
        .empty(rx_fifo_empty),
        .data_in(rx_data),
        .clk(clk),
        .nrst(nrst),
        .w_en(rx_cplt),
        .r_en(sig_rx)
    );
    
    assign tx_full = tx_fifo_full;
    assign rx_full = rx_fifo_full;
    assign tx_empty = tx_fifo_empty;
    assign rx_empty = rx_fifo_empty;
    
endmodule