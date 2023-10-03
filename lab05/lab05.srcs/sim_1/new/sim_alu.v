`timescale 1ns / 1ps

module sim_alu();

    wire [31:0] S;
    wire z;
    wire Cout;
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    reg [2:0] alu_ops;
    
    alu ALU(S, z, Cout, A, B, Cin, alu_ops);
    
    // Clock
//    reg clk;
//    always #10 clk = ~clk;
    
    // Sequential
    integer i;
    integer j;
    initial begin
        #0
        A = 32'd1;
        B = 32'd2;
        Cin = 1;
        for (i = 0; i < 8; i = i + 1) begin
            #50
            alu_ops = i;
        end
        
        #50
        A = 32'hffffffff;
        B = 32'hffffeeee;
        Cin = 0;
        for (j = 0; j < 8; j = j + 1) begin
            #50
                alu_ops = j;
        end
        
        #50
            $finish;
    end

endmodule
