`timescale 1ns / 1ps

module sim_bcd_cnt();

    reg clk, up, down, set9, set0;
    wire [3:0] s;
    wire cout, bout;
    
    bcd_counter counter(s, cout, bout, up, down, set9, set0, clk);
    
    // Clock
    always #10 clk = ~clk;
    
    // Sequential
    initial begin
        #0
            clk = 2'b0;
            set0 = 2'b0;
            set9 = 2'b1;
            up = 2'b1;
            down = 2'b0;
        #100
            set0 = 2'b1;
            set9 = 2'b0;
        #200
            set0 = 2'b0;
            set9 = 2'b0;
        #400
            up = 2'b0;
            down = 2'b1;
        #1000
            $finish;
    end
    
endmodule
