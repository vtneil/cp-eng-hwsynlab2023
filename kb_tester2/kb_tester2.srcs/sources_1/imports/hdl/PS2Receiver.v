`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date: 03/03/2015 09:33:36 PM
// Design Name: 
// Module Name: PS2Receiver
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: PS2 Receiver module used to shift in keycodes from a keyboard plugged into the PS2 port
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PS2Receiver(
    input clk,
    input kclk,
    input kdata,
    output reg [15:0] keycode=0,
    output reg oflag
    );
    
    wire kclkf, kdataf;
    reg [7:0]datacur=0;
    reg [7:0]dataprev=0;
    reg [3:0]cnt=0;
    reg flag=0;
    
debouncer #(
    .COUNT_MAX(19),
    .COUNT_WIDTH(5)
) db_clk(
    .clk(clk),
    .I(kclk),
    .O(kclkf)
);
debouncer #(
   .COUNT_MAX(19),
   .COUNT_WIDTH(5)
) db_data(
    .clk(clk),
    .I(kdata),
    .O(kdataf)
);
    
always@(negedge(kclkf))begin
    case(cnt)
    0:;//Start bit
    1:datacur[0]<=kdataf;
    2:datacur[1]<=kdataf;
    3:datacur[2]<=kdataf;
    4:datacur[3]<=kdataf;
    5:datacur[4]<=kdataf;
    6:datacur[5]<=kdataf;
    7:datacur[6]<=kdataf;
    8:datacur[7]<=kdataf;
    9:flag<=1'b1;
    10:flag<=1'b0;
    
    endcase
        if(cnt<=9) cnt<=cnt+1;
        else if(cnt==10) cnt<=0;
end

reg pflag;
always@(posedge clk) begin
    if (flag == 1'b1 && pflag == 1'b0) begin
        keycode <= {dataprev, datacur};
        oflag <= 1'b1;
        dataprev <= datacur;
    end else
        oflag <= 'b0;
    pflag <= flag;
end

endmodule

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
)(
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

module debouncer #(
    parameter DEBOUNCE_COUNT = 32'd12_500_000,  // 125 ms debounce
    parameter DATA_WIDTH = 1
) (
    output reg [DATA_WIDTH - 1:0] btn_out,
    input wire [DATA_WIDTH - 1:0] btn_in,
    input wire clk
);

    reg [31:0] counter = 0;
    reg [DATA_WIDTH - 1:0] btn_stable = 0;
    
    always @(posedge clk) begin
        if (btn_in == btn_stable) begin
            if (counter < DEBOUNCE_COUNT) counter <= counter + 1;
        end else begin
            counter <= 0;
            btn_stable <= btn_in;
        end

        if (counter >= DEBOUNCE_COUNT) btn_out <= btn_stable;
    end

endmodule
