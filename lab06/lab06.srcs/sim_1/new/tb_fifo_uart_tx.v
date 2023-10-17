`timescale 1ns / 1ps

module tb_fifo_uart_tx;

    parameter CLOCK_SPEED = 100_000_000; // 100 MHz
    parameter BAUD_RATE = 9600;
    parameter DATA_BITS = 8;
    parameter FIFO_DEPTH = 16;

    reg clk;
    reg nrst;
    reg [DATA_BITS-1:0] fifo_data_in;
    reg fifo_w_en;
    reg fifo_r_en;
    wire [DATA_BITS-1:0] fifo_data_out;
    wire fifo_full;
    wire fifo_empty;

    wire uart_tx_active;
    wire uart_tx_serial;
    wire uart_tx_cplt;

    // Instantiate the FIFO
    sync_fifo #(
        .DEPTH(FIFO_DEPTH),
        .DATA_WIDTH(DATA_BITS)
    ) fifo (
        .data_out(fifo_data_out),
        .full(fifo_full),
        .empty(fifo_empty),
        .data_in(fifo_data_in),
        .clk(clk),
        .nrst(nrst),
        .w_en(fifo_w_en),
        .r_en(fifo_r_en)
    );

    // Instantiate the UART transmitter
    uart_tx #(
        .CLOCK_SPEED(CLOCK_SPEED),
        .BAUD_RATE(BAUD_RATE),
        .DATA_BITS(DATA_BITS)
    ) uart_transmitter (
        .tx_active(uart_tx_active),
        .tx_serial(uart_tx_serial),
        .tx_cplt(uart_tx_cplt),
        .tx_byte(fifo_data_out),
        .tx_en(fifo_r_en),  // Enable UART transmission when reading from FIFO
        .clk(clk)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        nrst = 0;
        fifo_data_in = 0;
        fifo_w_en = 0;
        fifo_r_en = 0;

        // Apply Reset
        #20 nrst = 1;

        // Write some data to the FIFO
        @(posedge clk) fifo_data_in = 8'hA5; // sample data
        @(posedge clk) fifo_w_en = 1;
        @(posedge clk) fifo_w_en = 0; // Disable writing immediately after one clock cycle

        // You might want to write more data or handle full condition

        // Simulate some delay - ensure there's data in the FIFO
        #100;

        // Start reading from the FIFO and transmitting via UART
        @(posedge clk) fifo_r_en = 1;
        @(posedge clk) fifo_r_en = 0; // Disable writing immediately after one clock cycle

        // Wait for transmission to complete or add more complex checks
        wait(uart_tx_cplt);

        fifo_r_en = 0; // Stop reading from FIFO

        // End the simulation
        $finish;
    end

    // Clock Generation
    always #5 clk = ~clk; // 10ns period -> 100 MHz

    // Monitor the results
    initial begin
        $monitor("Time: %0tns, FIFO full: %b, FIFO empty: %b, UART TX Active: %b, UART TX Complete: %b, UART TX Serial: %b",
                 $time, fifo_full, fifo_empty, uart_tx_active, uart_tx_cplt, uart_tx_serial);
    end

endmodule
