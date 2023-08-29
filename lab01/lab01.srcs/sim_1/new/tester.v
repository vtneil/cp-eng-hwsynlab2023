`timescale 1ns / 1ns

module tester();
    reg a, b, cin;
    wire [1:0] s;
    wire [1:0] cout;
    
    fulladder a1(cout[1], s[1], a, b, cin);
    fulladder2 a2(cout[0], s[0], a, b, cin);
    
    initial begin
        $monitor("time %t: {%b %b} <- {%d %d %d}", $time, cout[1], s[1], a, b, cin);
        $monitor("time %t: {%b %b} <- {%d %d %d}", $time, cout[0], s[0], a, b, cin);
        #0  a = 0;
            b = 0;
            cin = 0;

        #10 a = 1;

        #5  b = 1;

        #5  cin = 1;

        #100 $finish;
    end
endmodule
