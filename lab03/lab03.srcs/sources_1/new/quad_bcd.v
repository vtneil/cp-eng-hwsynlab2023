`timescale 1ns / 1ps

module quad_bcd(output wire [6:0] seg,
                output wire dp,
                output wire [3:0] an,
                output wire [7:0] led,
                input wire clk,
                input wire [7:0] sw,
                input wire btnC,
                input wire btnU);
    
    parameter DIV1 = 32'd2;
    parameter DIV2 = 32'd125_000;
    
    wire clk1, clk2;
    wire set9999, set0000, set9999d, set0000d;
    wire up1, up10, up100, up1000, down1, down10, down100, down1000;
    wire up1d, up10d, up100d, up1000d, down1d, down10d, down100d, down1000d;
    wire [15:0] s;
    wire [13:0] v;
    wire cout1, bout1, cout10, bout10, cout100, bout100;
    
    // Clock dividers
    clk_div(clk1, clk, DIV1); // Divide main
    clk_div(clk2, clk1, DIV2); // Divide display
    
    // Display
    quad_7_seg(seg, an, clk2, s[15:12], s[11:8], s[7:4], s[3:0]);
    
    assign dp = 1'b1;
    assign led = {1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    
    // Pulsers and Debouncer
    debouncer db01(up1000d, sw[7], clk1);
    debouncer db02(down1000d, sw[6], clk1);
    debouncer db03(up100d, sw[5], clk1);
    debouncer db04(down100d, sw[4], clk1);
    debouncer db05(up10d, sw[3], clk1);
    debouncer db07(down10d, sw[2], clk1);
    debouncer db08(up1d, sw[1], clk1);
    debouncer db09(down1d, sw[0], clk1);
    single_pulser pu1000(up1000, up1000d, clk1);
    single_pulser pd1000(down1000, down1000d, clk1);
    single_pulser pu100(up100, up100d, clk1);
    single_pulser pd100(down100, down100d, clk1);
    single_pulser pu10(up10, up10d, clk1);
    single_pulser pd10(down10, down10d, clk1);
    single_pulser pu1(up1, up1d, clk1);
    single_pulser pd1(down1, down1d, clk1);
    
    debouncer db1(set0000d, btnC, clk1);
    debouncer db2(set9999d, btnU, clk1);
    single_pulser sb1(set0000, set0000d, clk1);
    single_pulser sb2(set9999, set9999d, clk1);
    
    // Calculator
    bcd_to_hex b2h(v, s);
    
    bcd_counter bcd1(
        .s(s[3:0]),
        .Cout(cout1),
        .Bout(bout1),
        .up(up1 & (v < 14'd9999)),
        .down(down1 & (v > 14'd0)),
        .set9(set9999),
        .set0(set0000),
        .clk(clk1)
    );

    bcd_counter bcd10(
        .s(s[7:4]),
        .Cout(cout10),
        .Bout(bout10),
        .up((up10 | cout1) & (v < 14'd9990)),
        .down((down10 | bout1) & (v > 14'd9)),
        .set9(set9999),
        .set0(set0000),
        .clk(clk1)
    );

    bcd_counter bcd100(
        .s(s[11:8]),
        .Cout(cout100),
        .Bout(bout100),
        .up((up100 | cout10) & (v < 14'd9900)),
        .down((down100 | bout10) & (v > 14'd99)),
        .set9(set9999),
        .set0(set0000),
        .clk(clk1)
    );

    bcd_counter bcd1000(
        .s(s[15:12]),
        .Cout(),
        .Bout(),
        .up((up1000 | cout100) & (v < 14'd9000)),
        .down((down1000 | bout100) & (v > 14'd999)),
        .set9(set9999),
        .set0(set0000),
        .clk(clk1)
    );

endmodule

module bcd_to_hex(output wire [13:0] hex,
                  input wire [15:0] bcd);
    assign hex = 14'd1000 * bcd[15:12] + 14'd100 * bcd[11:8] + 14'd10 * bcd[7:4] + bcd[3:0];
endmodule
