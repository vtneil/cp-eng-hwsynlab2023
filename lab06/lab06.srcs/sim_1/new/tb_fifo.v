`timescale 1ns / 1ps

module tb_uart_tx;

    parameter CLOCK_SPEED = 100_000_000; // 100 MHz
    parameter BAUD_RATE = 115200;
    parameter DATA_BITS = 8;

    reg clk;
    reg tx_en;
    reg [DATA_BITS-1:0] tx_byte;
    wire tx_active;
    wire tx_serial;
    wire tx_cplt;

    // Instantiate the Unit Under Test (UUT)
    uart_tx #(
        .CLOCK_SPEED(CLOCK_SPEED),
        .BAUD_RATE(BAUD_RATE),
        .DATA_BITS(DATA_BITS)
    ) uut (
        .tx_active(tx_active),
        .tx_serial(tx_serial),
        .tx_cplt(tx_cplt),
        .tx_byte(tx_byte),
        .tx_en(tx_en),
        .clk(clk)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        tx_en = 0;
        tx_byte = 8'b0;
        
        // Wait for 100 clock cycles to stabilize the system
        repeat (100) #5 clk = ~clk;

        // Enable transmission and send a byte
        tx_en = 1;
        tx_byte = 8'h55; // 0x55 -> 01010101 in binary
        #5;
        
        tx_en = 0; // Disable further transmission

        // Let's observe the transmission for some time
        repeat (10000) #5 clk = ~clk;

        // Finish the simulation
        $finish;
    end
      
    // Clock Generation
    always #5 clk = ~clk; // 10ns period -> 100 MHz

    // Monitor the results
    initial begin
        $monitor("Time: %0tns, tx_en: %b, tx_byte: %h, tx_active: %b, tx_serial: %b, tx_cplt: %b", 
                 $time, tx_en, tx_byte, tx_active, tx_serial, tx_cplt);
    end

endmodule
