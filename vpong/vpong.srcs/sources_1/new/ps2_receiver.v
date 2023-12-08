`timescale 1ns / 1ps

module ps2_receiver(
    input wire clk,
    input wire kclk,
    input wire kdata,
    output wire [15:0] keycode,
    output reg oflag
);
    
    wire kclkf, kdataf;
    reg [7:0] datacur = 0;
    reg [7:0] dataprev = 0;
    reg [3:0] cnt = 0;
    reg flag = 0;
    
    reg [15:0] keycode_r;
    assign keycode = keycode_r;
    
    initial keycode_r = 0;
    
    debouncer_kb #(
        .COUNT_MAX(19),
        .COUNT_WIDTH(5)
    ) db_clk(
        .clk(clk),
        .I(kclk),
        .O(kclkf)
    );
    
    debouncer_kb #(
       .COUNT_MAX(19),
       .COUNT_WIDTH(5)
    ) db_data(
        .clk(clk),
        .I(kdata),
        .O(kdataf)
    );
        
    always @(negedge(kclkf)) begin
        case(cnt)
            0: ;
            1: datacur[0] <= kdataf;
            2: datacur[1] <= kdataf;
            3: datacur[2] <= kdataf;
            4: datacur[3] <= kdataf;
            5: datacur[4] <= kdataf;
            6: datacur[5] <= kdataf;
            7: datacur[6] <= kdataf;
            8: datacur[7] <= kdataf;
            9: flag <= 1'b1;
            10: flag <= 1'b0;
        
        endcase
            if (cnt <= 9) cnt <= cnt + 1;
            else if (cnt == 10) cnt <= 0;
    end
    
    reg pflag;
    
    always @(posedge clk) begin
        if (flag == 1'b1 && pflag == 1'b0) begin
            keycode_r <= {dataprev, datacur};
            oflag <= 1'b1;
            dataprev <= datacur;
        end else
            oflag <= 'b0;
        pflag <= flag;
    end

endmodule

module debouncer_kb #(
    parameter COUNT_MAX    = 255,
    parameter COUNT_WIDTH  = 8
) (
    input clk,
    input I,
    output reg O
);
    reg [COUNT_WIDTH - 1:0] count;
    reg Iv = 0;
    always @(posedge clk)
        if (I == Iv) begin
            if (count == COUNT_MAX)
                O <= I;
            else
                count <= count + 1'b1;
        end else begin
            count <= 'b0;
            Iv <= I;
        end

endmodule
