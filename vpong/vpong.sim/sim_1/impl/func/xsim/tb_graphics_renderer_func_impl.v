// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Dec  7 15:12:45 2023
// Host        : vt_g14 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.sim/sim_1/impl/func/xsim/tb_graphics_renderer_func_impl.v
// Design      : top_vpong
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ascii_rom
   (\gpu_px_reg[3] ,
    clk_IBUF_BUFG,
    ADDRARDADDR,
    \pixel_data_reg[1] );
  output \gpu_px_reg[3] ;
  input clk_IBUF_BUFG;
  input [10:0]ADDRARDADDR;
  input [2:0]\pixel_data_reg[1] ;

  wire [10:0]ADDRARDADDR;
  wire clk_IBUF_BUFG;
  wire \gpu_px_reg[3] ;
  wire \pixel_data[2]_i_4_n_1 ;
  wire \pixel_data[2]_i_5_n_1 ;
  wire [2:0]\pixel_data_reg[1] ;
  wire [7:0]row_out_raw;
  wire [15:8]NLW_addr_reg_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_addr_reg_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_addr_reg_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_addr_reg_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "text_renderer_inst/text_generator/ascii_rom_inst/addr_reg_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000007E818199BD8181A5817E000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000018180018181818181800000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h000000000000101010FE10101000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000007E00000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000181800000000000000000000),
    .INIT_18(256'h000000007E7E1818181818783818000000000000386CC6C6C6C6C6C66C380000),
    .INIT_19(256'h00000000FEFE06063E3E0606FEFE000000000000FEFEC0C0FEFE0606FEFE0000),
    .INIT_1A(256'h00000000FEFE0606FEFEC0C0FEFE00000000000006060606FEFEC6C6C6C60000),
    .INIT_1B(256'h000000000606060606060606FEFE000000000000FEFEC6C6FEFEC0C0FEFE0000),
    .INIT_1C(256'h00000000FEFE0606FEFEC6C6FEFE000000000000FEFEC6C6FEFEC6C6FEFE0000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000018180000181800000000),
    .INIT_1E(256'h000000000000007E007E00000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h00000000C6C6C6FEFEC6C66C3810000000000000000000000000000000000000),
    .INIT_21(256'h000000007CFEC0C0C0C0C0C0FE7C000000000000FCFEC6C6FCFCC6C6FEFC0000),
    .INIT_22(256'h00000000FEFEC0C0FCFCC0C0FEFE000000000000FCFEC6C6C6C6C6C6FEFC0000),
    .INIT_23(256'h0000000076FEC6C6FEFEC0C0FE7C000000000000C0C0C0C0FCFCC0C0FEFE0000),
    .INIT_24(256'h00000000FEFE303030303030FEFE000000000000C6C6C6C6FEFEC6C6C6C60000),
    .INIT_25(256'h00000000C6CCD8F0E0E0F0D8CCC600000000000078F8181818181818FEFE0000),
    .INIT_26(256'h00000000C6C6C6C6C6D6FEEEC6C6000000000000FEFEC0C0C0C0C0C0C0C00000),
    .INIT_27(256'h000000007CFEC6C6C6C6C6C6FE7C000000000000C6C6C6CEDEFEF6E6C6C60000),
    .INIT_28(256'h00000000066CFED6C6C6C6C6FEFC000000000000C0C0C0C0FCFEC6C6FEFC0000),
    .INIT_29(256'h000000007CFE06067EFCC0C0FE7C000000000000C6C6CCD8FCFEC6C6FEFC0000),
    .INIT_2A(256'h000000007CFEC6C6C6C6C6C6C6C60000000000003030303030303030FEFE0000),
    .INIT_2B(256'h00000000C6EEFED6C6C6C6C6C6C600000000000010386CC6C6C6C6C6C6C60000),
    .INIT_2C(256'h00000000181818181818386CC6C6000000000000C6C66C383838386CC6C60000),
    .INIT_2D(256'h0000000000000000000000000000000000000000FEFEC06030180C06FEFE0000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000101010101010101010100000),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    addr_reg_reg
       (.ADDRARDADDR({ADDRARDADDR,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_addr_reg_reg_DOADO_UNCONNECTED[15:8],row_out_raw}),
        .DOBDO(NLW_addr_reg_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_addr_reg_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_addr_reg_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h00CC1D1D33FF1D1D)) 
    \pixel_data[2]_i_4 
       (.I0(row_out_raw[7]),
        .I1(\pixel_data_reg[1] [1]),
        .I2(row_out_raw[5]),
        .I3(row_out_raw[4]),
        .I4(\pixel_data_reg[1] [0]),
        .I5(row_out_raw[6]),
        .O(\pixel_data[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00CC1D1D33FF1D1D)) 
    \pixel_data[2]_i_5 
       (.I0(row_out_raw[3]),
        .I1(\pixel_data_reg[1] [1]),
        .I2(row_out_raw[1]),
        .I3(row_out_raw[0]),
        .I4(\pixel_data_reg[1] [0]),
        .I5(row_out_raw[2]),
        .O(\pixel_data[2]_i_5_n_1 ));
  MUXF7 \pixel_data_reg[2]_i_2 
       (.I0(\pixel_data[2]_i_4_n_1 ),
        .I1(\pixel_data[2]_i_5_n_1 ),
        .O(\gpu_px_reg[3] ),
        .S(\pixel_data_reg[1] [2]));
endmodule

module ascii_text_generator
   (\gpu_px_reg[3] ,
    clk_IBUF_BUFG,
    ADDRARDADDR,
    \pixel_data_reg[1] );
  output \gpu_px_reg[3] ;
  input clk_IBUF_BUFG;
  input [10:0]ADDRARDADDR;
  input [2:0]\pixel_data_reg[1] ;

  wire [10:0]ADDRARDADDR;
  wire clk_IBUF_BUFG;
  wire \gpu_px_reg[3] ;
  wire [2:0]\pixel_data_reg[1] ;

  ascii_rom ascii_rom_inst
       (.ADDRARDADDR(ADDRARDADDR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\gpu_px_reg[3] (\gpu_px_reg[3] ),
        .\pixel_data_reg[1] (\pixel_data_reg[1] ));
endmodule

module baudrate_generator
   (baud,
    clk_IBUF_BUFG);
  output baud;
  input clk_IBUF_BUFG;

  wire baud;
  wire baud_i_1_n_1;
  wire clear;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_11_n_1 ;
  wire \counter[0]_i_14_n_1 ;
  wire \counter[0]_i_15_n_1 ;
  wire \counter[0]_i_16_n_1 ;
  wire \counter[0]_i_3_n_1 ;
  wire \counter[0]_i_4__16_n_1 ;
  wire \counter[0]_i_5__0_n_1 ;
  wire \counter[0]_i_6__0_n_1 ;
  wire [31:0]counter_inc;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_12_n_1 ;
  wire \counter_reg[0]_i_13_n_1 ;
  wire \counter_reg[0]_i_17_n_1 ;
  wire \counter_reg[0]_i_18_n_1 ;
  wire \counter_reg[0]_i_19_n_1 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[0]_i_2_n_8 ;
  wire \counter_reg[0]_i_8_n_1 ;
  wire \counter_reg[0]_i_9_n_1 ;
  wire \counter_reg[12]_i_1__16_n_1 ;
  wire \counter_reg[12]_i_1__16_n_5 ;
  wire \counter_reg[12]_i_1__16_n_6 ;
  wire \counter_reg[12]_i_1__16_n_7 ;
  wire \counter_reg[12]_i_1__16_n_8 ;
  wire \counter_reg[16]_i_1__16_n_1 ;
  wire \counter_reg[16]_i_1__16_n_5 ;
  wire \counter_reg[16]_i_1__16_n_6 ;
  wire \counter_reg[16]_i_1__16_n_7 ;
  wire \counter_reg[16]_i_1__16_n_8 ;
  wire \counter_reg[20]_i_1__0_n_1 ;
  wire \counter_reg[20]_i_1__0_n_5 ;
  wire \counter_reg[20]_i_1__0_n_6 ;
  wire \counter_reg[20]_i_1__0_n_7 ;
  wire \counter_reg[20]_i_1__0_n_8 ;
  wire \counter_reg[24]_i_1__0_n_1 ;
  wire \counter_reg[24]_i_1__0_n_5 ;
  wire \counter_reg[24]_i_1__0_n_6 ;
  wire \counter_reg[24]_i_1__0_n_7 ;
  wire \counter_reg[24]_i_1__0_n_8 ;
  wire \counter_reg[28]_i_1__0_n_5 ;
  wire \counter_reg[28]_i_1__0_n_6 ;
  wire \counter_reg[28]_i_1__0_n_7 ;
  wire \counter_reg[28]_i_1__0_n_8 ;
  wire \counter_reg[4]_i_1__16_n_1 ;
  wire \counter_reg[4]_i_1__16_n_5 ;
  wire \counter_reg[4]_i_1__16_n_6 ;
  wire \counter_reg[4]_i_1__16_n_7 ;
  wire \counter_reg[4]_i_1__16_n_8 ;
  wire \counter_reg[8]_i_1__16_n_1 ;
  wire \counter_reg[8]_i_1__16_n_5 ;
  wire \counter_reg[8]_i_1__16_n_6 ;
  wire \counter_reg[8]_i_1__16_n_7 ;
  wire \counter_reg[8]_i_1__16_n_8 ;
  wire [3:0]\NLW_counter_reg[0]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[0]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_13_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_18_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_19_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_8_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[0]_i_9_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__16_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1__16_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__16_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__16_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h7FFF8000)) 
    baud_i_1
       (.I0(\counter[0]_i_6__0_n_1 ),
        .I1(\counter[0]_i_5__0_n_1 ),
        .I2(\counter[0]_i_4__16_n_1 ),
        .I3(\counter[0]_i_3_n_1 ),
        .I4(baud),
        .O(baud_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    baud_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_i_1_n_1),
        .Q(baud),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_11 
       (.I0(counter_inc[21]),
        .I1(counter_inc[20]),
        .I2(counter_inc[19]),
        .I3(counter_inc[18]),
        .O(\counter[0]_i_11_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_14 
       (.I0(counter_inc[17]),
        .I1(counter_inc[13]),
        .I2(counter_inc[10]),
        .I3(counter_inc[9]),
        .O(\counter[0]_i_14_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_15 
       (.I0(counter_inc[26]),
        .I1(counter_inc[24]),
        .I2(counter_inc[22]),
        .I3(counter_inc[16]),
        .O(\counter[0]_i_15_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_16 
       (.I0(counter_inc[15]),
        .I1(counter_inc[14]),
        .I2(counter_inc[12]),
        .I3(counter_inc[11]),
        .O(\counter[0]_i_16_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[0]_i_1__16 
       (.I0(\counter[0]_i_3_n_1 ),
        .I1(\counter[0]_i_4__16_n_1 ),
        .I2(\counter[0]_i_5__0_n_1 ),
        .I3(\counter[0]_i_6__0_n_1 ),
        .O(clear));
  LUT5 #(
    .INIT(32'h00010000)) 
    \counter[0]_i_3 
       (.I0(counter_inc[23]),
        .I1(counter_inc[25]),
        .I2(counter_inc[29]),
        .I3(counter_inc[31]),
        .I4(\counter[0]_i_11_n_1 ),
        .O(\counter[0]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \counter[0]_i_4__16 
       (.I0(counter_inc[8]),
        .I1(counter_inc[5]),
        .I2(counter_inc[2]),
        .I3(counter_inc[1]),
        .I4(\counter[0]_i_14_n_1 ),
        .O(\counter[0]_i_4__16_n_1 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \counter[0]_i_5__0 
       (.I0(counter_inc[27]),
        .I1(counter_inc[28]),
        .I2(counter_inc[30]),
        .I3(counter_reg[0]),
        .I4(\counter[0]_i_15_n_1 ),
        .O(\counter[0]_i_5__0_n_1 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \counter[0]_i_6__0 
       (.I0(counter_inc[6]),
        .I1(counter_inc[7]),
        .I2(counter_inc[3]),
        .I3(counter_inc[4]),
        .I4(\counter[0]_i_16_n_1 ),
        .O(\counter[0]_i_6__0_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7__0 
       (.I0(counter_reg[0]),
        .O(counter_inc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_8 ),
        .Q(counter_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_10 
       (.CI(\counter_reg[0]_i_9_n_1 ),
        .CO(\NLW_counter_reg[0]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[0]_i_10_O_UNCONNECTED [3],counter_inc[31:29]}),
        .S({1'b0,counter_reg[31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_12 
       (.CI(\counter_reg[0]_i_13_n_1 ),
        .CO({\counter_reg[0]_i_12_n_1 ,\NLW_counter_reg[0]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[8:5]),
        .S(counter_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_13 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_13_n_1 ,\NLW_counter_reg[0]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[4:1]),
        .S(counter_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_17 
       (.CI(\counter_reg[0]_i_18_n_1 ),
        .CO({\counter_reg[0]_i_17_n_1 ,\NLW_counter_reg[0]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[20:17]),
        .S(counter_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_18 
       (.CI(\counter_reg[0]_i_19_n_1 ),
        .CO({\counter_reg[0]_i_18_n_1 ,\NLW_counter_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[16:13]),
        .S(counter_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_19 
       (.CI(\counter_reg[0]_i_12_n_1 ),
        .CO({\counter_reg[0]_i_19_n_1 ,\NLW_counter_reg[0]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[12:9]),
        .S(counter_reg[12:9]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_1 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 ,\counter_reg[0]_i_2_n_8 }),
        .S({counter_reg[3:1],counter_inc[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_8 
       (.CI(\counter_reg[0]_i_17_n_1 ),
        .CO({\counter_reg[0]_i_8_n_1 ,\NLW_counter_reg[0]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[24:21]),
        .S(counter_reg[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_9 
       (.CI(\counter_reg[0]_i_8_n_1 ),
        .CO({\counter_reg[0]_i_9_n_1 ,\NLW_counter_reg[0]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_inc[28:25]),
        .S(counter_reg[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__16_n_6 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__16_n_5 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__16_n_8 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__16 
       (.CI(\counter_reg[8]_i_1__16_n_1 ),
        .CO({\counter_reg[12]_i_1__16_n_1 ,\NLW_counter_reg[12]_i_1__16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__16_n_5 ,\counter_reg[12]_i_1__16_n_6 ,\counter_reg[12]_i_1__16_n_7 ,\counter_reg[12]_i_1__16_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__16_n_7 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__16_n_6 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__16_n_5 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__16_n_8 ),
        .Q(counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__16 
       (.CI(\counter_reg[12]_i_1__16_n_1 ),
        .CO({\counter_reg[16]_i_1__16_n_1 ,\NLW_counter_reg[16]_i_1__16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__16_n_5 ,\counter_reg[16]_i_1__16_n_6 ,\counter_reg[16]_i_1__16_n_7 ,\counter_reg[16]_i_1__16_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__16_n_7 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__16_n_6 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__16_n_5 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_8 ),
        .Q(counter_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1__0 
       (.CI(\counter_reg[16]_i_1__16_n_1 ),
        .CO({\counter_reg[20]_i_1__0_n_1 ,\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1__0_n_5 ,\counter_reg[20]_i_1__0_n_6 ,\counter_reg[20]_i_1__0_n_7 ,\counter_reg[20]_i_1__0_n_8 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_7 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_6 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1__0_n_5 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_8 ),
        .Q(counter_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1__0 
       (.CI(\counter_reg[20]_i_1__0_n_1 ),
        .CO({\counter_reg[24]_i_1__0_n_1 ,\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__0_n_5 ,\counter_reg[24]_i_1__0_n_6 ,\counter_reg[24]_i_1__0_n_7 ,\counter_reg[24]_i_1__0_n_8 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_7 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_6 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_5 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_8 ),
        .Q(counter_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[28]_i_1__0 
       (.CI(\counter_reg[24]_i_1__0_n_1 ),
        .CO(\NLW_counter_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1__0_n_5 ,\counter_reg[28]_i_1__0_n_6 ,\counter_reg[28]_i_1__0_n_7 ,\counter_reg[28]_i_1__0_n_8 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_7 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_6 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1__0_n_5 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__16_n_8 ),
        .Q(counter_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__16 
       (.CI(\counter_reg[0]_i_2_n_1 ),
        .CO({\counter_reg[4]_i_1__16_n_1 ,\NLW_counter_reg[4]_i_1__16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__16_n_5 ,\counter_reg[4]_i_1__16_n_6 ,\counter_reg[4]_i_1__16_n_7 ,\counter_reg[4]_i_1__16_n_8 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__16_n_7 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__16_n_6 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__16_n_5 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__16_n_8 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__16 
       (.CI(\counter_reg[4]_i_1__16_n_1 ),
        .CO({\counter_reg[8]_i_1__16_n_1 ,\NLW_counter_reg[8]_i_1__16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__16_n_5 ,\counter_reg[8]_i_1__16_n_6 ,\counter_reg[8]_i_1__16_n_7 ,\counter_reg[8]_i_1__16_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__16_n_7 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

module clk_div
   (CLK,
    clk_IBUF_BUFG);
  output CLK;
  input clk_IBUF_BUFG;

  wire CLK;
  wire clear;
  wire clk_IBUF_BUFG;
  wire clk_out0_carry__0_i_1_n_1;
  wire clk_out0_carry__0_i_2_n_1;
  wire clk_out0_carry__0_i_3_n_1;
  wire clk_out0_carry__0_i_4_n_1;
  wire clk_out0_carry__0_i_5_n_1;
  wire clk_out0_carry__0_i_6_n_1;
  wire clk_out0_carry__0_i_7_n_1;
  wire clk_out0_carry__0_n_1;
  wire clk_out0_carry__1_i_1_n_1;
  wire clk_out0_carry__1_i_2_n_1;
  wire clk_out0_carry__1_i_3_n_1;
  wire clk_out0_carry__1_i_4_n_1;
  wire clk_out0_carry__1_n_1;
  wire clk_out0_carry__2_i_1_n_1;
  wire clk_out0_carry__2_i_2_n_1;
  wire clk_out0_carry_i_1_n_1;
  wire clk_out0_carry_i_2_n_1;
  wire clk_out0_carry_i_3_n_1;
  wire clk_out0_carry_i_4_n_1;
  wire clk_out0_carry_i_5_n_1;
  wire clk_out0_carry_i_6_n_1;
  wire clk_out0_carry_n_1;
  wire counter0_carry__0_i_1_n_1;
  wire counter0_carry__0_i_2_n_1;
  wire counter0_carry__0_i_3_n_1;
  wire counter0_carry__0_i_4_n_1;
  wire counter0_carry__0_i_5_n_1;
  wire counter0_carry__0_i_6_n_1;
  wire counter0_carry__0_i_7_n_1;
  wire counter0_carry__0_n_1;
  wire counter0_carry__1_i_1_n_1;
  wire counter0_carry__1_i_2_n_1;
  wire counter0_carry__1_i_3_n_1;
  wire counter0_carry__1_i_4_n_1;
  wire counter0_carry__1_i_5_n_1;
  wire counter0_carry__1_i_6_n_1;
  wire counter0_carry__1_i_7_n_1;
  wire counter0_carry__1_n_1;
  wire counter0_carry__2_i_1_n_1;
  wire counter0_carry__2_i_2_n_1;
  wire counter0_carry__2_i_3_n_1;
  wire counter0_carry__2_i_4_n_1;
  wire counter0_carry__2_i_5_n_1;
  wire counter0_carry__2_i_6_n_1;
  wire counter0_carry_i_1_n_1;
  wire counter0_carry_i_2_n_1;
  wire counter0_carry_i_3_n_1;
  wire counter0_carry_i_4_n_1;
  wire counter0_carry_i_5_n_1;
  wire counter0_carry_i_6_n_1;
  wire counter0_carry_n_1;
  wire \counter[0]_i_2_n_1 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[0]_i_1_n_8 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_8 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_8 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_8 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_8 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_8 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_8 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_8 ;
  wire p_0_in;
  wire [2:0]NLW_clk_out0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_clk_out0_carry_O_UNCONNECTED;
  wire [2:0]NLW_clk_out0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_clk_out0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_clk_out0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_clk_out0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_clk_out0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_clk_out0_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 clk_out0_carry
       (.CI(1'b0),
        .CO({clk_out0_carry_n_1,NLW_clk_out0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,clk_out0_carry_i_1_n_1,clk_out0_carry_i_2_n_1}),
        .O(NLW_clk_out0_carry_O_UNCONNECTED[3:0]),
        .S({clk_out0_carry_i_3_n_1,clk_out0_carry_i_4_n_1,clk_out0_carry_i_5_n_1,clk_out0_carry_i_6_n_1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 clk_out0_carry__0
       (.CI(clk_out0_carry_n_1),
        .CO({clk_out0_carry__0_n_1,NLW_clk_out0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,clk_out0_carry__0_i_1_n_1,clk_out0_carry__0_i_2_n_1,clk_out0_carry__0_i_3_n_1}),
        .O(NLW_clk_out0_carry__0_O_UNCONNECTED[3:0]),
        .S({clk_out0_carry__0_i_4_n_1,clk_out0_carry__0_i_5_n_1,clk_out0_carry__0_i_6_n_1,clk_out0_carry__0_i_7_n_1}));
  LUT2 #(
    .INIT(4'h7)) 
    clk_out0_carry__0_i_1
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(clk_out0_carry__0_i_1_n_1));
  LUT2 #(
    .INIT(4'h7)) 
    clk_out0_carry__0_i_2
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .O(clk_out0_carry__0_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__0_i_3
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(clk_out0_carry__0_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__0_i_4
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(clk_out0_carry__0_i_4_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    clk_out0_carry__0_i_5
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .O(clk_out0_carry__0_i_5_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    clk_out0_carry__0_i_6
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(clk_out0_carry__0_i_6_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    clk_out0_carry__0_i_7
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(clk_out0_carry__0_i_7_n_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 clk_out0_carry__1
       (.CI(clk_out0_carry__0_n_1),
        .CO({clk_out0_carry__1_n_1,NLW_clk_out0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_out0_carry__1_O_UNCONNECTED[3:0]),
        .S({clk_out0_carry__1_i_1_n_1,clk_out0_carry__1_i_2_n_1,clk_out0_carry__1_i_3_n_1,clk_out0_carry__1_i_4_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__1_i_1
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(clk_out0_carry__1_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__1_i_2
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(clk_out0_carry__1_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__1_i_3
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(clk_out0_carry__1_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__1_i_4
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(clk_out0_carry__1_i_4_n_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 clk_out0_carry__2
       (.CI(clk_out0_carry__1_n_1),
        .CO({NLW_clk_out0_carry__2_CO_UNCONNECTED[3:2],p_0_in,NLW_clk_out0_carry__2_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_out0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,clk_out0_carry__2_i_1_n_1,clk_out0_carry__2_i_2_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__2_i_1
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(clk_out0_carry__2_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry__2_i_2
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(clk_out0_carry__2_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    clk_out0_carry_i_1
       (.I0(counter_reg[7]),
        .O(clk_out0_carry_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry_i_2
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(clk_out0_carry_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry_i_3
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(clk_out0_carry_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    clk_out0_carry_i_4
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(clk_out0_carry_i_4_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    clk_out0_carry_i_5
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(clk_out0_carry_i_5_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    clk_out0_carry_i_6
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(clk_out0_carry_i_6_n_1));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(CLK),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_1,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter0_carry_i_1_n_1),
        .DI({counter_reg[9],counter0_carry_i_2_n_1,counter_reg[5],1'b0}),
        .O(NLW_counter0_carry_O_UNCONNECTED[3:0]),
        .S({counter0_carry_i_3_n_1,counter0_carry_i_4_n_1,counter0_carry_i_5_n_1,counter0_carry_i_6_n_1}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_1),
        .CO({counter0_carry__0_n_1,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,counter0_carry__0_i_1_n_1,counter0_carry__0_i_2_n_1,counter0_carry__0_i_3_n_1}),
        .O(NLW_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({counter0_carry__0_i_4_n_1,counter0_carry__0_i_5_n_1,counter0_carry__0_i_6_n_1,counter0_carry__0_i_7_n_1}));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_1
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(counter0_carry__0_i_1_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_2
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(counter0_carry__0_i_2_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__0_i_3
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .O(counter0_carry__0_i_3_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry__0_i_4
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .O(counter0_carry__0_i_4_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry__0_i_5
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .O(counter0_carry__0_i_5_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry__0_i_6
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(counter0_carry__0_i_6_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__0_i_7
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(counter0_carry__0_i_7_n_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_1),
        .CO({counter0_carry__1_n_1,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({counter0_carry__1_i_1_n_1,counter0_carry__1_i_2_n_1,counter0_carry__1_i_3_n_1,counter_reg[19]}),
        .O(NLW_counter0_carry__1_O_UNCONNECTED[3:0]),
        .S({counter0_carry__1_i_4_n_1,counter0_carry__1_i_5_n_1,counter0_carry__1_i_6_n_1,counter0_carry__1_i_7_n_1}));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__1_i_1
       (.I0(counter_reg[25]),
        .I1(counter_reg[24]),
        .O(counter0_carry__1_i_1_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__1_i_2
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .O(counter0_carry__1_i_2_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__1_i_3
       (.I0(counter_reg[21]),
        .I1(counter_reg[20]),
        .O(counter0_carry__1_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__1_i_4
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(counter0_carry__1_i_4_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__1_i_5
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(counter0_carry__1_i_5_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__1_i_6
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(counter0_carry__1_i_6_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry__1_i_7
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(counter0_carry__1_i_7_n_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_1),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],clear,NLW_counter0_carry__2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,counter0_carry__2_i_1_n_1,counter0_carry__2_i_2_n_1,counter0_carry__2_i_3_n_1}),
        .O(NLW_counter0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,counter0_carry__2_i_4_n_1,counter0_carry__2_i_5_n_1,counter0_carry__2_i_6_n_1}));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__2_i_1
       (.I0(counter_reg[31]),
        .I1(counter_reg[30]),
        .O(counter0_carry__2_i_1_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__2_i_2
       (.I0(counter_reg[29]),
        .I1(counter_reg[28]),
        .O(counter0_carry__2_i_2_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry__2_i_3
       (.I0(counter_reg[27]),
        .I1(counter_reg[26]),
        .O(counter0_carry__2_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__2_i_4
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(counter0_carry__2_i_4_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__2_i_5
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(counter0_carry__2_i_5_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry__2_i_6
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(counter0_carry__2_i_6_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_1
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(counter0_carry_i_1_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    counter0_carry_i_2
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(counter0_carry_i_2_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry_i_3
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(counter0_carry_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    counter0_carry_i_4
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .O(counter0_carry_i_4_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    counter0_carry_i_5
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(counter0_carry_i_5_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    counter0_carry_i_6
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(counter0_carry_i_6_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_8 ),
        .Q(counter_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_1 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 ,\counter_reg[0]_i_1_n_8 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_8 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_1 ),
        .CO({\counter_reg[12]_i_1_n_1 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 ,\counter_reg[12]_i_1_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_1 ),
        .CO({\counter_reg[16]_i_1_n_1 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 ,\counter_reg[16]_i_1_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_8 ),
        .Q(counter_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_1 ),
        .CO({\counter_reg[20]_i_1_n_1 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 ,\counter_reg[20]_i_1_n_8 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_8 ),
        .Q(counter_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_1 ),
        .CO({\counter_reg[24]_i_1_n_1 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 ,\counter_reg[24]_i_1_n_8 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_8 ),
        .Q(counter_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_1 ),
        .CO(\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 ,\counter_reg[28]_i_1_n_8 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_8 ),
        .Q(counter_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_1 ),
        .CO({\counter_reg[4]_i_1_n_1 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 ,\counter_reg[4]_i_1_n_8 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_1 ),
        .CO({\counter_reg[8]_i_1_n_1 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 ,\counter_reg[8]_i_1_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

module debouncer
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_2_n_1;
  wire btn_out_i_3_n_1;
  wire btn_stable;
  wire clear;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_4_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3_n_1 ;
  wire \counter_reg[0]_i_3_n_5 ;
  wire \counter_reg[0]_i_3_n_6 ;
  wire \counter_reg[0]_i_3_n_7 ;
  wire \counter_reg[0]_i_3_n_8 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[12]_i_1__0_n_8 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_8 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_8 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire p_0_in;
  wire sel;
  wire [2:0]\NLW_counter_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2_n_1),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(btn_stable),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1 
       (.I0(Q),
        .I1(btn_stable),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__1 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2_n_1),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3_n_1 ,\NLW_counter_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3_n_5 ,\counter_reg[0]_i_3_n_6 ,\counter_reg[0]_i_3_n_7 ,\counter_reg[0]_i_3_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_8 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_1 ),
        .CO({\counter_reg[12]_i_1__0_n_1 ,\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 ,\counter_reg[12]_i_1__0_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_8 ),
        .Q(counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 ,\counter_reg[16]_i_1__0_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_3_n_1 ),
        .CO({\counter_reg[4]_i_1__0_n_1 ,\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 ,\counter_reg[4]_i_1__0_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_8 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_1 ),
        .CO({\counter_reg[8]_i_1__0_n_1 ,\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 ,\counter_reg[8]_i_1__0_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__9_n_1;
  wire btn_out_i_2__9_n_1;
  wire btn_out_i_3__9_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__9_n_1 ;
  wire \counter[0]_i_2__11_n_1 ;
  wire \counter[0]_i_4__9_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__9_n_1 ;
  wire \counter_reg[0]_i_3__9_n_5 ;
  wire \counter_reg[0]_i_3__9_n_6 ;
  wire \counter_reg[0]_i_3__9_n_7 ;
  wire \counter_reg[0]_i_3__9_n_8 ;
  wire \counter_reg[12]_i_1__10_n_1 ;
  wire \counter_reg[12]_i_1__10_n_5 ;
  wire \counter_reg[12]_i_1__10_n_6 ;
  wire \counter_reg[12]_i_1__10_n_7 ;
  wire \counter_reg[12]_i_1__10_n_8 ;
  wire \counter_reg[16]_i_1__10_n_5 ;
  wire \counter_reg[16]_i_1__10_n_6 ;
  wire \counter_reg[16]_i_1__10_n_7 ;
  wire \counter_reg[16]_i_1__10_n_8 ;
  wire \counter_reg[4]_i_1__10_n_1 ;
  wire \counter_reg[4]_i_1__10_n_5 ;
  wire \counter_reg[4]_i_1__10_n_6 ;
  wire \counter_reg[4]_i_1__10_n_7 ;
  wire \counter_reg[4]_i_1__10_n_8 ;
  wire \counter_reg[8]_i_1__10_n_1 ;
  wire \counter_reg[8]_i_1__10_n_5 ;
  wire \counter_reg[8]_i_1__10_n_6 ;
  wire \counter_reg[8]_i_1__10_n_7 ;
  wire \counter_reg[8]_i_1__10_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__9_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__10_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__10_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__10_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__10_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__9
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__9_n_1),
        .O(btn_out_i_1__9_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__9
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__9_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__9_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__9
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__9_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__9_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__9 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__9_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__11 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__9_n_1),
        .O(\counter[0]_i_2__11_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__9 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[0]_i_3__9_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__9_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__9 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__9_n_1 ,\NLW_counter_reg[0]_i_3__9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__9_n_5 ,\counter_reg[0]_i_3__9_n_6 ,\counter_reg[0]_i_3__9_n_7 ,\counter_reg[0]_i_3__9_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__9_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[8]_i_1__10_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[8]_i_1__10_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[12]_i_1__10_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__9_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__10 
       (.CI(\counter_reg[8]_i_1__10_n_1 ),
        .CO({\counter_reg[12]_i_1__10_n_1 ,\NLW_counter_reg[12]_i_1__10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__10_n_5 ,\counter_reg[12]_i_1__10_n_6 ,\counter_reg[12]_i_1__10_n_7 ,\counter_reg[12]_i_1__10_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[12]_i_1__10_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[12]_i_1__10_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[12]_i_1__10_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[16]_i_1__10_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__9_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__10 
       (.CI(\counter_reg[12]_i_1__10_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__10_n_5 ,\counter_reg[16]_i_1__10_n_6 ,\counter_reg[16]_i_1__10_n_7 ,\counter_reg[16]_i_1__10_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[16]_i_1__10_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[16]_i_1__10_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[16]_i_1__10_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[0]_i_3__9_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[0]_i_3__9_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[0]_i_3__9_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[4]_i_1__10_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__9_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__10 
       (.CI(\counter_reg[0]_i_3__9_n_1 ),
        .CO({\counter_reg[4]_i_1__10_n_1 ,\NLW_counter_reg[4]_i_1__10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__10_n_5 ,\counter_reg[4]_i_1__10_n_6 ,\counter_reg[4]_i_1__10_n_7 ,\counter_reg[4]_i_1__10_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[4]_i_1__10_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[4]_i_1__10_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[4]_i_1__10_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[8]_i_1__10_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__9_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__10 
       (.CI(\counter_reg[4]_i_1__10_n_1 ),
        .CO({\counter_reg[8]_i_1__10_n_1 ,\NLW_counter_reg[8]_i_1__10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__10_n_5 ,\counter_reg[8]_i_1__10_n_6 ,\counter_reg[8]_i_1__10_n_7 ,\counter_reg[8]_i_1__10_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__11_n_1 ),
        .D(\counter_reg[8]_i_1__10_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__9_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_1
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__10_n_1;
  wire btn_out_i_2__10_n_1;
  wire btn_out_i_3__10_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__10_n_1 ;
  wire \counter[0]_i_2__12_n_1 ;
  wire \counter[0]_i_4__10_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__10_n_1 ;
  wire \counter_reg[0]_i_3__10_n_5 ;
  wire \counter_reg[0]_i_3__10_n_6 ;
  wire \counter_reg[0]_i_3__10_n_7 ;
  wire \counter_reg[0]_i_3__10_n_8 ;
  wire \counter_reg[12]_i_1__11_n_1 ;
  wire \counter_reg[12]_i_1__11_n_5 ;
  wire \counter_reg[12]_i_1__11_n_6 ;
  wire \counter_reg[12]_i_1__11_n_7 ;
  wire \counter_reg[12]_i_1__11_n_8 ;
  wire \counter_reg[16]_i_1__11_n_5 ;
  wire \counter_reg[16]_i_1__11_n_6 ;
  wire \counter_reg[16]_i_1__11_n_7 ;
  wire \counter_reg[16]_i_1__11_n_8 ;
  wire \counter_reg[4]_i_1__11_n_1 ;
  wire \counter_reg[4]_i_1__11_n_5 ;
  wire \counter_reg[4]_i_1__11_n_6 ;
  wire \counter_reg[4]_i_1__11_n_7 ;
  wire \counter_reg[4]_i_1__11_n_8 ;
  wire \counter_reg[8]_i_1__11_n_1 ;
  wire \counter_reg[8]_i_1__11_n_5 ;
  wire \counter_reg[8]_i_1__11_n_6 ;
  wire \counter_reg[8]_i_1__11_n_7 ;
  wire \counter_reg[8]_i_1__11_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__10_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__11_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__11_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__11_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__11_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__10
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__10_n_1),
        .O(btn_out_i_1__10_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__10
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__10_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__10_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__10
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__10_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__10_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__10 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__10_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__12 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__10_n_1),
        .O(\counter[0]_i_2__12_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__10 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[0]_i_3__10_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__10_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__10 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__10_n_1 ,\NLW_counter_reg[0]_i_3__10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__10_n_5 ,\counter_reg[0]_i_3__10_n_6 ,\counter_reg[0]_i_3__10_n_7 ,\counter_reg[0]_i_3__10_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__10_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[8]_i_1__11_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[8]_i_1__11_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[12]_i_1__11_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__10_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__11 
       (.CI(\counter_reg[8]_i_1__11_n_1 ),
        .CO({\counter_reg[12]_i_1__11_n_1 ,\NLW_counter_reg[12]_i_1__11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__11_n_5 ,\counter_reg[12]_i_1__11_n_6 ,\counter_reg[12]_i_1__11_n_7 ,\counter_reg[12]_i_1__11_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[12]_i_1__11_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[12]_i_1__11_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[12]_i_1__11_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[16]_i_1__11_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__10_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__11 
       (.CI(\counter_reg[12]_i_1__11_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__11_n_5 ,\counter_reg[16]_i_1__11_n_6 ,\counter_reg[16]_i_1__11_n_7 ,\counter_reg[16]_i_1__11_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[16]_i_1__11_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[16]_i_1__11_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[16]_i_1__11_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[0]_i_3__10_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[0]_i_3__10_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[0]_i_3__10_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[4]_i_1__11_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__10_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__11 
       (.CI(\counter_reg[0]_i_3__10_n_1 ),
        .CO({\counter_reg[4]_i_1__11_n_1 ,\NLW_counter_reg[4]_i_1__11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__11_n_5 ,\counter_reg[4]_i_1__11_n_6 ,\counter_reg[4]_i_1__11_n_7 ,\counter_reg[4]_i_1__11_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[4]_i_1__11_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[4]_i_1__11_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[4]_i_1__11_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__10_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[8]_i_1__11_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__10_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__11 
       (.CI(\counter_reg[4]_i_1__11_n_1 ),
        .CO({\counter_reg[8]_i_1__11_n_1 ,\NLW_counter_reg[8]_i_1__11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__11_n_5 ,\counter_reg[8]_i_1__11_n_6 ,\counter_reg[8]_i_1__11_n_7 ,\counter_reg[8]_i_1__11_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__12_n_1 ),
        .D(\counter_reg[8]_i_1__11_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__10_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_10
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__4_n_1;
  wire btn_out_i_2__4_n_1;
  wire btn_out_i_3__4_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__4_n_1 ;
  wire \counter[0]_i_2__6_n_1 ;
  wire \counter[0]_i_4__4_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__4_n_1 ;
  wire \counter_reg[0]_i_3__4_n_5 ;
  wire \counter_reg[0]_i_3__4_n_6 ;
  wire \counter_reg[0]_i_3__4_n_7 ;
  wire \counter_reg[0]_i_3__4_n_8 ;
  wire \counter_reg[12]_i_1__5_n_1 ;
  wire \counter_reg[12]_i_1__5_n_5 ;
  wire \counter_reg[12]_i_1__5_n_6 ;
  wire \counter_reg[12]_i_1__5_n_7 ;
  wire \counter_reg[12]_i_1__5_n_8 ;
  wire \counter_reg[16]_i_1__5_n_5 ;
  wire \counter_reg[16]_i_1__5_n_6 ;
  wire \counter_reg[16]_i_1__5_n_7 ;
  wire \counter_reg[16]_i_1__5_n_8 ;
  wire \counter_reg[4]_i_1__5_n_1 ;
  wire \counter_reg[4]_i_1__5_n_5 ;
  wire \counter_reg[4]_i_1__5_n_6 ;
  wire \counter_reg[4]_i_1__5_n_7 ;
  wire \counter_reg[4]_i_1__5_n_8 ;
  wire \counter_reg[8]_i_1__5_n_1 ;
  wire \counter_reg[8]_i_1__5_n_5 ;
  wire \counter_reg[8]_i_1__5_n_6 ;
  wire \counter_reg[8]_i_1__5_n_7 ;
  wire \counter_reg[8]_i_1__5_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__5_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__5_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__4
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__4_n_1),
        .O(btn_out_i_1__4_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__4
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__4_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__4_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__4
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__4_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__4_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__4 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__4_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__6 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__4_n_1),
        .O(\counter[0]_i_2__6_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__4 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[0]_i_3__4_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__4_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__4 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__4_n_1 ,\NLW_counter_reg[0]_i_3__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__4_n_5 ,\counter_reg[0]_i_3__4_n_6 ,\counter_reg[0]_i_3__4_n_7 ,\counter_reg[0]_i_3__4_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__4_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[8]_i_1__5_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[8]_i_1__5_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[12]_i_1__5_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__4_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__5 
       (.CI(\counter_reg[8]_i_1__5_n_1 ),
        .CO({\counter_reg[12]_i_1__5_n_1 ,\NLW_counter_reg[12]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__5_n_5 ,\counter_reg[12]_i_1__5_n_6 ,\counter_reg[12]_i_1__5_n_7 ,\counter_reg[12]_i_1__5_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[12]_i_1__5_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[12]_i_1__5_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[12]_i_1__5_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[16]_i_1__5_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__4_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__5 
       (.CI(\counter_reg[12]_i_1__5_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__5_n_5 ,\counter_reg[16]_i_1__5_n_6 ,\counter_reg[16]_i_1__5_n_7 ,\counter_reg[16]_i_1__5_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[16]_i_1__5_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[16]_i_1__5_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[16]_i_1__5_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[0]_i_3__4_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[0]_i_3__4_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[0]_i_3__4_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[4]_i_1__5_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__4_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__5 
       (.CI(\counter_reg[0]_i_3__4_n_1 ),
        .CO({\counter_reg[4]_i_1__5_n_1 ,\NLW_counter_reg[4]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__5_n_5 ,\counter_reg[4]_i_1__5_n_6 ,\counter_reg[4]_i_1__5_n_7 ,\counter_reg[4]_i_1__5_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[4]_i_1__5_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[4]_i_1__5_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[4]_i_1__5_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__4_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[8]_i_1__5_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__4_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__5 
       (.CI(\counter_reg[4]_i_1__5_n_1 ),
        .CO({\counter_reg[8]_i_1__5_n_1 ,\NLW_counter_reg[8]_i_1__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__5_n_5 ,\counter_reg[8]_i_1__5_n_6 ,\counter_reg[8]_i_1__5_n_7 ,\counter_reg[8]_i_1__5_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__6_n_1 ),
        .D(\counter_reg[8]_i_1__5_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__4_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_11
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__5_n_1;
  wire btn_out_i_2__5_n_1;
  wire btn_out_i_3__5_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__5_n_1 ;
  wire \counter[0]_i_2__7_n_1 ;
  wire \counter[0]_i_4__5_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__5_n_1 ;
  wire \counter_reg[0]_i_3__5_n_5 ;
  wire \counter_reg[0]_i_3__5_n_6 ;
  wire \counter_reg[0]_i_3__5_n_7 ;
  wire \counter_reg[0]_i_3__5_n_8 ;
  wire \counter_reg[12]_i_1__6_n_1 ;
  wire \counter_reg[12]_i_1__6_n_5 ;
  wire \counter_reg[12]_i_1__6_n_6 ;
  wire \counter_reg[12]_i_1__6_n_7 ;
  wire \counter_reg[12]_i_1__6_n_8 ;
  wire \counter_reg[16]_i_1__6_n_5 ;
  wire \counter_reg[16]_i_1__6_n_6 ;
  wire \counter_reg[16]_i_1__6_n_7 ;
  wire \counter_reg[16]_i_1__6_n_8 ;
  wire \counter_reg[4]_i_1__6_n_1 ;
  wire \counter_reg[4]_i_1__6_n_5 ;
  wire \counter_reg[4]_i_1__6_n_6 ;
  wire \counter_reg[4]_i_1__6_n_7 ;
  wire \counter_reg[4]_i_1__6_n_8 ;
  wire \counter_reg[8]_i_1__6_n_1 ;
  wire \counter_reg[8]_i_1__6_n_5 ;
  wire \counter_reg[8]_i_1__6_n_6 ;
  wire \counter_reg[8]_i_1__6_n_7 ;
  wire \counter_reg[8]_i_1__6_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__5_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__6_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__6_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__5
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__5_n_1),
        .O(btn_out_i_1__5_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__5
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__5_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__5_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__5
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__5_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__5_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__5 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__5_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__7 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__5_n_1),
        .O(\counter[0]_i_2__7_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__5 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[0]_i_3__5_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__5_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__5 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__5_n_1 ,\NLW_counter_reg[0]_i_3__5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__5_n_5 ,\counter_reg[0]_i_3__5_n_6 ,\counter_reg[0]_i_3__5_n_7 ,\counter_reg[0]_i_3__5_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__5_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[8]_i_1__6_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[8]_i_1__6_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[12]_i_1__6_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__5_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__6 
       (.CI(\counter_reg[8]_i_1__6_n_1 ),
        .CO({\counter_reg[12]_i_1__6_n_1 ,\NLW_counter_reg[12]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__6_n_5 ,\counter_reg[12]_i_1__6_n_6 ,\counter_reg[12]_i_1__6_n_7 ,\counter_reg[12]_i_1__6_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[12]_i_1__6_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[12]_i_1__6_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[12]_i_1__6_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[16]_i_1__6_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__5_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__6 
       (.CI(\counter_reg[12]_i_1__6_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__6_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__6_n_5 ,\counter_reg[16]_i_1__6_n_6 ,\counter_reg[16]_i_1__6_n_7 ,\counter_reg[16]_i_1__6_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[16]_i_1__6_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[16]_i_1__6_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[16]_i_1__6_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[0]_i_3__5_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[0]_i_3__5_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[0]_i_3__5_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[4]_i_1__6_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__5_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__6 
       (.CI(\counter_reg[0]_i_3__5_n_1 ),
        .CO({\counter_reg[4]_i_1__6_n_1 ,\NLW_counter_reg[4]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__6_n_5 ,\counter_reg[4]_i_1__6_n_6 ,\counter_reg[4]_i_1__6_n_7 ,\counter_reg[4]_i_1__6_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[4]_i_1__6_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[4]_i_1__6_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[4]_i_1__6_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__5_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[8]_i_1__6_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__5_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__6 
       (.CI(\counter_reg[4]_i_1__6_n_1 ),
        .CO({\counter_reg[8]_i_1__6_n_1 ,\NLW_counter_reg[8]_i_1__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__6_n_5 ,\counter_reg[8]_i_1__6_n_6 ,\counter_reg[8]_i_1__6_n_7 ,\counter_reg[8]_i_1__6_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__7_n_1 ),
        .D(\counter_reg[8]_i_1__6_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__5_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_12
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__6_n_1;
  wire btn_out_i_2__6_n_1;
  wire btn_out_i_3__6_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__6_n_1 ;
  wire \counter[0]_i_2__8_n_1 ;
  wire \counter[0]_i_4__6_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__6_n_1 ;
  wire \counter_reg[0]_i_3__6_n_5 ;
  wire \counter_reg[0]_i_3__6_n_6 ;
  wire \counter_reg[0]_i_3__6_n_7 ;
  wire \counter_reg[0]_i_3__6_n_8 ;
  wire \counter_reg[12]_i_1__7_n_1 ;
  wire \counter_reg[12]_i_1__7_n_5 ;
  wire \counter_reg[12]_i_1__7_n_6 ;
  wire \counter_reg[12]_i_1__7_n_7 ;
  wire \counter_reg[12]_i_1__7_n_8 ;
  wire \counter_reg[16]_i_1__7_n_5 ;
  wire \counter_reg[16]_i_1__7_n_6 ;
  wire \counter_reg[16]_i_1__7_n_7 ;
  wire \counter_reg[16]_i_1__7_n_8 ;
  wire \counter_reg[4]_i_1__7_n_1 ;
  wire \counter_reg[4]_i_1__7_n_5 ;
  wire \counter_reg[4]_i_1__7_n_6 ;
  wire \counter_reg[4]_i_1__7_n_7 ;
  wire \counter_reg[4]_i_1__7_n_8 ;
  wire \counter_reg[8]_i_1__7_n_1 ;
  wire \counter_reg[8]_i_1__7_n_5 ;
  wire \counter_reg[8]_i_1__7_n_6 ;
  wire \counter_reg[8]_i_1__7_n_7 ;
  wire \counter_reg[8]_i_1__7_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__6_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__7_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__7_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__6
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__6_n_1),
        .O(btn_out_i_1__6_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__6
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__6_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__6_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__6
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__6_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__6_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__6 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__6_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__8 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__6_n_1),
        .O(\counter[0]_i_2__8_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__6 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[0]_i_3__6_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__6_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__6 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__6_n_1 ,\NLW_counter_reg[0]_i_3__6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__6_n_5 ,\counter_reg[0]_i_3__6_n_6 ,\counter_reg[0]_i_3__6_n_7 ,\counter_reg[0]_i_3__6_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__6_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[8]_i_1__7_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[8]_i_1__7_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[12]_i_1__7_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__6_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__7 
       (.CI(\counter_reg[8]_i_1__7_n_1 ),
        .CO({\counter_reg[12]_i_1__7_n_1 ,\NLW_counter_reg[12]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__7_n_5 ,\counter_reg[12]_i_1__7_n_6 ,\counter_reg[12]_i_1__7_n_7 ,\counter_reg[12]_i_1__7_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[12]_i_1__7_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[12]_i_1__7_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[12]_i_1__7_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[16]_i_1__7_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__6_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__7 
       (.CI(\counter_reg[12]_i_1__7_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__7_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__7_n_5 ,\counter_reg[16]_i_1__7_n_6 ,\counter_reg[16]_i_1__7_n_7 ,\counter_reg[16]_i_1__7_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[16]_i_1__7_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[16]_i_1__7_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[16]_i_1__7_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[0]_i_3__6_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[0]_i_3__6_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[0]_i_3__6_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[4]_i_1__7_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__6_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__7 
       (.CI(\counter_reg[0]_i_3__6_n_1 ),
        .CO({\counter_reg[4]_i_1__7_n_1 ,\NLW_counter_reg[4]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__7_n_5 ,\counter_reg[4]_i_1__7_n_6 ,\counter_reg[4]_i_1__7_n_7 ,\counter_reg[4]_i_1__7_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[4]_i_1__7_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[4]_i_1__7_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[4]_i_1__7_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__6_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[8]_i_1__7_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__6_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__7 
       (.CI(\counter_reg[4]_i_1__7_n_1 ),
        .CO({\counter_reg[8]_i_1__7_n_1 ,\NLW_counter_reg[8]_i_1__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__7_n_5 ,\counter_reg[8]_i_1__7_n_6 ,\counter_reg[8]_i_1__7_n_7 ,\counter_reg[8]_i_1__7_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__8_n_1 ),
        .D(\counter_reg[8]_i_1__7_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__6_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_13
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__7_n_1;
  wire btn_out_i_2__7_n_1;
  wire btn_out_i_3__7_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__7_n_1 ;
  wire \counter[0]_i_2__9_n_1 ;
  wire \counter[0]_i_4__7_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__7_n_1 ;
  wire \counter_reg[0]_i_3__7_n_5 ;
  wire \counter_reg[0]_i_3__7_n_6 ;
  wire \counter_reg[0]_i_3__7_n_7 ;
  wire \counter_reg[0]_i_3__7_n_8 ;
  wire \counter_reg[12]_i_1__8_n_1 ;
  wire \counter_reg[12]_i_1__8_n_5 ;
  wire \counter_reg[12]_i_1__8_n_6 ;
  wire \counter_reg[12]_i_1__8_n_7 ;
  wire \counter_reg[12]_i_1__8_n_8 ;
  wire \counter_reg[16]_i_1__8_n_5 ;
  wire \counter_reg[16]_i_1__8_n_6 ;
  wire \counter_reg[16]_i_1__8_n_7 ;
  wire \counter_reg[16]_i_1__8_n_8 ;
  wire \counter_reg[4]_i_1__8_n_1 ;
  wire \counter_reg[4]_i_1__8_n_5 ;
  wire \counter_reg[4]_i_1__8_n_6 ;
  wire \counter_reg[4]_i_1__8_n_7 ;
  wire \counter_reg[4]_i_1__8_n_8 ;
  wire \counter_reg[8]_i_1__8_n_1 ;
  wire \counter_reg[8]_i_1__8_n_5 ;
  wire \counter_reg[8]_i_1__8_n_6 ;
  wire \counter_reg[8]_i_1__8_n_7 ;
  wire \counter_reg[8]_i_1__8_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__7_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__8_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__8_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__8_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__8_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__7
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__7_n_1),
        .O(btn_out_i_1__7_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__7
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__7_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__7_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__7
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__7_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__7_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__7 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__7_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__9 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__7_n_1),
        .O(\counter[0]_i_2__9_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__7 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[0]_i_3__7_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__7_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__7 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__7_n_1 ,\NLW_counter_reg[0]_i_3__7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__7_n_5 ,\counter_reg[0]_i_3__7_n_6 ,\counter_reg[0]_i_3__7_n_7 ,\counter_reg[0]_i_3__7_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__7_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[8]_i_1__8_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[8]_i_1__8_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[12]_i_1__8_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__7_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__8 
       (.CI(\counter_reg[8]_i_1__8_n_1 ),
        .CO({\counter_reg[12]_i_1__8_n_1 ,\NLW_counter_reg[12]_i_1__8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__8_n_5 ,\counter_reg[12]_i_1__8_n_6 ,\counter_reg[12]_i_1__8_n_7 ,\counter_reg[12]_i_1__8_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[12]_i_1__8_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[12]_i_1__8_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[12]_i_1__8_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[16]_i_1__8_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__7_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__8 
       (.CI(\counter_reg[12]_i_1__8_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__8_n_5 ,\counter_reg[16]_i_1__8_n_6 ,\counter_reg[16]_i_1__8_n_7 ,\counter_reg[16]_i_1__8_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[16]_i_1__8_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[16]_i_1__8_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[16]_i_1__8_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[0]_i_3__7_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[0]_i_3__7_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[0]_i_3__7_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[4]_i_1__8_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__7_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__8 
       (.CI(\counter_reg[0]_i_3__7_n_1 ),
        .CO({\counter_reg[4]_i_1__8_n_1 ,\NLW_counter_reg[4]_i_1__8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__8_n_5 ,\counter_reg[4]_i_1__8_n_6 ,\counter_reg[4]_i_1__8_n_7 ,\counter_reg[4]_i_1__8_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[4]_i_1__8_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[4]_i_1__8_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[4]_i_1__8_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[8]_i_1__8_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__7_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__8 
       (.CI(\counter_reg[4]_i_1__8_n_1 ),
        .CO({\counter_reg[8]_i_1__8_n_1 ,\NLW_counter_reg[8]_i_1__8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__8_n_5 ,\counter_reg[8]_i_1__8_n_6 ,\counter_reg[8]_i_1__8_n_7 ,\counter_reg[8]_i_1__8_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__9_n_1 ),
        .D(\counter_reg[8]_i_1__8_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__7_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_14
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__8_n_1;
  wire btn_out_i_2__8_n_1;
  wire btn_out_i_3__8_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__8_n_1 ;
  wire \counter[0]_i_2__10_n_1 ;
  wire \counter[0]_i_4__8_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__8_n_1 ;
  wire \counter_reg[0]_i_3__8_n_5 ;
  wire \counter_reg[0]_i_3__8_n_6 ;
  wire \counter_reg[0]_i_3__8_n_7 ;
  wire \counter_reg[0]_i_3__8_n_8 ;
  wire \counter_reg[12]_i_1__9_n_1 ;
  wire \counter_reg[12]_i_1__9_n_5 ;
  wire \counter_reg[12]_i_1__9_n_6 ;
  wire \counter_reg[12]_i_1__9_n_7 ;
  wire \counter_reg[12]_i_1__9_n_8 ;
  wire \counter_reg[16]_i_1__9_n_5 ;
  wire \counter_reg[16]_i_1__9_n_6 ;
  wire \counter_reg[16]_i_1__9_n_7 ;
  wire \counter_reg[16]_i_1__9_n_8 ;
  wire \counter_reg[4]_i_1__9_n_1 ;
  wire \counter_reg[4]_i_1__9_n_5 ;
  wire \counter_reg[4]_i_1__9_n_6 ;
  wire \counter_reg[4]_i_1__9_n_7 ;
  wire \counter_reg[4]_i_1__9_n_8 ;
  wire \counter_reg[8]_i_1__9_n_1 ;
  wire \counter_reg[8]_i_1__9_n_5 ;
  wire \counter_reg[8]_i_1__9_n_6 ;
  wire \counter_reg[8]_i_1__9_n_7 ;
  wire \counter_reg[8]_i_1__9_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__8_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__9_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__9_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__9_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__9_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__8
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__8_n_1),
        .O(btn_out_i_1__8_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__8
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__8_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__8_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__8
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__8_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__8_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__8 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__8_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__10 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__8_n_1),
        .O(\counter[0]_i_2__10_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__8 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[0]_i_3__8_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__8_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__8 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__8_n_1 ,\NLW_counter_reg[0]_i_3__8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__8_n_5 ,\counter_reg[0]_i_3__8_n_6 ,\counter_reg[0]_i_3__8_n_7 ,\counter_reg[0]_i_3__8_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__8_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[8]_i_1__9_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[8]_i_1__9_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[12]_i_1__9_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__8_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__9 
       (.CI(\counter_reg[8]_i_1__9_n_1 ),
        .CO({\counter_reg[12]_i_1__9_n_1 ,\NLW_counter_reg[12]_i_1__9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__9_n_5 ,\counter_reg[12]_i_1__9_n_6 ,\counter_reg[12]_i_1__9_n_7 ,\counter_reg[12]_i_1__9_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[12]_i_1__9_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[12]_i_1__9_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[12]_i_1__9_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[16]_i_1__9_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__8_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__9 
       (.CI(\counter_reg[12]_i_1__9_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__9_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__9_n_5 ,\counter_reg[16]_i_1__9_n_6 ,\counter_reg[16]_i_1__9_n_7 ,\counter_reg[16]_i_1__9_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[16]_i_1__9_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[16]_i_1__9_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[16]_i_1__9_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[0]_i_3__8_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[0]_i_3__8_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[0]_i_3__8_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[4]_i_1__9_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__8_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__9 
       (.CI(\counter_reg[0]_i_3__8_n_1 ),
        .CO({\counter_reg[4]_i_1__9_n_1 ,\NLW_counter_reg[4]_i_1__9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__9_n_5 ,\counter_reg[4]_i_1__9_n_6 ,\counter_reg[4]_i_1__9_n_7 ,\counter_reg[4]_i_1__9_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[4]_i_1__9_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[4]_i_1__9_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[4]_i_1__9_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__8_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[8]_i_1__9_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__8_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__9 
       (.CI(\counter_reg[4]_i_1__9_n_1 ),
        .CO({\counter_reg[8]_i_1__9_n_1 ,\NLW_counter_reg[8]_i_1__9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__9_n_5 ,\counter_reg[8]_i_1__9_n_6 ,\counter_reg[8]_i_1__9_n_7 ,\counter_reg[8]_i_1__9_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__10_n_1 ),
        .D(\counter_reg[8]_i_1__9_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__8_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_15
   (AR,
    clk_IBUF_BUFG,
    tmp2);
  output [0:0]AR;
  input clk_IBUF_BUFG;
  input tmp2;

  wire [0:0]AR;
  wire btn_out_i_1__15_n_1;
  wire btn_stable;
  wire clear;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_5_n_1 ;
  wire \counter[0]_i_6_n_1 ;
  wire \counter[0]_i_7_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__15_n_1 ;
  wire \counter_reg[0]_i_3__15_n_5 ;
  wire \counter_reg[0]_i_3__15_n_6 ;
  wire \counter_reg[0]_i_3__15_n_7 ;
  wire \counter_reg[0]_i_3__15_n_8 ;
  wire \counter_reg[12]_i_1__17_n_1 ;
  wire \counter_reg[12]_i_1__17_n_5 ;
  wire \counter_reg[12]_i_1__17_n_6 ;
  wire \counter_reg[12]_i_1__17_n_7 ;
  wire \counter_reg[12]_i_1__17_n_8 ;
  wire \counter_reg[16]_i_1__17_n_5 ;
  wire \counter_reg[16]_i_1__17_n_6 ;
  wire \counter_reg[16]_i_1__17_n_7 ;
  wire \counter_reg[16]_i_1__17_n_8 ;
  wire \counter_reg[4]_i_1__17_n_1 ;
  wire \counter_reg[4]_i_1__17_n_5 ;
  wire \counter_reg[4]_i_1__17_n_6 ;
  wire \counter_reg[4]_i_1__17_n_7 ;
  wire \counter_reg[4]_i_1__17_n_8 ;
  wire \counter_reg[8]_i_1__17_n_1 ;
  wire \counter_reg[8]_i_1__17_n_5 ;
  wire \counter_reg[8]_i_1__17_n_6 ;
  wire \counter_reg[8]_i_1__17_n_7 ;
  wire \counter_reg[8]_i_1__17_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire sel;
  wire tmp2;
  wire [2:0]\NLW_counter_reg[0]_i_3__15_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__17_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__17_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__17_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__17_CO_UNCONNECTED ;

  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    btn_out_i_1__15
       (.I0(btn_stable),
        .I1(sel),
        .I2(AR),
        .O(btn_out_i_1__15_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btn_out_i_1__15_n_1),
        .Q(AR),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp2),
        .Q(btn_stable),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__15 
       (.I0(tmp2),
        .I1(btn_stable),
        .O(clear));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_4__15 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(\counter[0]_i_6_n_1 ),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[14]),
        .I1(\counter[0]_i_7_n_1 ),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(\counter[0]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \counter[0]_i_7 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(\counter[0]_i_7_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3__15_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__15 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__15_n_1 ,\NLW_counter_reg[0]_i_3__15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__15_n_5 ,\counter_reg[0]_i_3__15_n_6 ,\counter_reg[0]_i_3__15_n_7 ,\counter_reg[0]_i_3__15_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_5_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__17_n_6 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__17_n_5 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__17_n_8 ),
        .Q(counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__17 
       (.CI(\counter_reg[8]_i_1__17_n_1 ),
        .CO({\counter_reg[12]_i_1__17_n_1 ,\NLW_counter_reg[12]_i_1__17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__17_n_5 ,\counter_reg[12]_i_1__17_n_6 ,\counter_reg[12]_i_1__17_n_7 ,\counter_reg[12]_i_1__17_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__17_n_7 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__17_n_6 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1__17_n_5 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__17_n_8 ),
        .Q(counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__17 
       (.CI(\counter_reg[12]_i_1__17_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__17_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__17_n_5 ,\counter_reg[16]_i_1__17_n_6 ,\counter_reg[16]_i_1__17_n_7 ,\counter_reg[16]_i_1__17_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__17_n_7 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__17_n_6 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[16]_i_1__17_n_5 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3__15_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3__15_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_3__15_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__17_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__17 
       (.CI(\counter_reg[0]_i_3__15_n_1 ),
        .CO({\counter_reg[4]_i_1__17_n_1 ,\NLW_counter_reg[4]_i_1__17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__17_n_5 ,\counter_reg[4]_i_1__17_n_6 ,\counter_reg[4]_i_1__17_n_7 ,\counter_reg[4]_i_1__17_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__17_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__17_n_6 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1__17_n_5 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__17_n_8 ),
        .Q(counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__17 
       (.CI(\counter_reg[4]_i_1__17_n_1 ),
        .CO({\counter_reg[8]_i_1__17_n_1 ,\NLW_counter_reg[8]_i_1__17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__17_n_5 ,\counter_reg[8]_i_1__17_n_6 ,\counter_reg[8]_i_1__17_n_7 ,\counter_reg[8]_i_1__17_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1__17_n_7 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_2
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__11_n_1;
  wire btn_out_i_2__11_n_1;
  wire btn_out_i_3__11_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__11_n_1 ;
  wire \counter[0]_i_2__13_n_1 ;
  wire \counter[0]_i_4__11_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__11_n_1 ;
  wire \counter_reg[0]_i_3__11_n_5 ;
  wire \counter_reg[0]_i_3__11_n_6 ;
  wire \counter_reg[0]_i_3__11_n_7 ;
  wire \counter_reg[0]_i_3__11_n_8 ;
  wire \counter_reg[12]_i_1__12_n_1 ;
  wire \counter_reg[12]_i_1__12_n_5 ;
  wire \counter_reg[12]_i_1__12_n_6 ;
  wire \counter_reg[12]_i_1__12_n_7 ;
  wire \counter_reg[12]_i_1__12_n_8 ;
  wire \counter_reg[16]_i_1__12_n_5 ;
  wire \counter_reg[16]_i_1__12_n_6 ;
  wire \counter_reg[16]_i_1__12_n_7 ;
  wire \counter_reg[16]_i_1__12_n_8 ;
  wire \counter_reg[4]_i_1__12_n_1 ;
  wire \counter_reg[4]_i_1__12_n_5 ;
  wire \counter_reg[4]_i_1__12_n_6 ;
  wire \counter_reg[4]_i_1__12_n_7 ;
  wire \counter_reg[4]_i_1__12_n_8 ;
  wire \counter_reg[8]_i_1__12_n_1 ;
  wire \counter_reg[8]_i_1__12_n_5 ;
  wire \counter_reg[8]_i_1__12_n_6 ;
  wire \counter_reg[8]_i_1__12_n_7 ;
  wire \counter_reg[8]_i_1__12_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__11_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__12_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__12_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__12_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__12_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__11
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__11_n_1),
        .O(btn_out_i_1__11_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__11
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__11_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__11_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__11
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__11_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__11_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__11 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__11_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__13 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__11_n_1),
        .O(\counter[0]_i_2__13_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__11 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[0]_i_3__11_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__11_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__11 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__11_n_1 ,\NLW_counter_reg[0]_i_3__11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__11_n_5 ,\counter_reg[0]_i_3__11_n_6 ,\counter_reg[0]_i_3__11_n_7 ,\counter_reg[0]_i_3__11_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__11_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[8]_i_1__12_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[8]_i_1__12_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[12]_i_1__12_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__11_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__12 
       (.CI(\counter_reg[8]_i_1__12_n_1 ),
        .CO({\counter_reg[12]_i_1__12_n_1 ,\NLW_counter_reg[12]_i_1__12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__12_n_5 ,\counter_reg[12]_i_1__12_n_6 ,\counter_reg[12]_i_1__12_n_7 ,\counter_reg[12]_i_1__12_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[12]_i_1__12_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[12]_i_1__12_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[12]_i_1__12_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[16]_i_1__12_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__11_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__12 
       (.CI(\counter_reg[12]_i_1__12_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__12_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__12_n_5 ,\counter_reg[16]_i_1__12_n_6 ,\counter_reg[16]_i_1__12_n_7 ,\counter_reg[16]_i_1__12_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[16]_i_1__12_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[16]_i_1__12_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[16]_i_1__12_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[0]_i_3__11_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[0]_i_3__11_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[0]_i_3__11_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[4]_i_1__12_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__11_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__12 
       (.CI(\counter_reg[0]_i_3__11_n_1 ),
        .CO({\counter_reg[4]_i_1__12_n_1 ,\NLW_counter_reg[4]_i_1__12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__12_n_5 ,\counter_reg[4]_i_1__12_n_6 ,\counter_reg[4]_i_1__12_n_7 ,\counter_reg[4]_i_1__12_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[4]_i_1__12_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[4]_i_1__12_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[4]_i_1__12_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__11_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[8]_i_1__12_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__11_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__12 
       (.CI(\counter_reg[4]_i_1__12_n_1 ),
        .CO({\counter_reg[8]_i_1__12_n_1 ,\NLW_counter_reg[8]_i_1__12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__12_n_5 ,\counter_reg[8]_i_1__12_n_6 ,\counter_reg[8]_i_1__12_n_7 ,\counter_reg[8]_i_1__12_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__13_n_1 ),
        .D(\counter_reg[8]_i_1__12_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__11_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_3
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__12_n_1;
  wire btn_out_i_2__12_n_1;
  wire btn_out_i_3__12_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__12_n_1 ;
  wire \counter[0]_i_2__14_n_1 ;
  wire \counter[0]_i_4__12_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__12_n_1 ;
  wire \counter_reg[0]_i_3__12_n_5 ;
  wire \counter_reg[0]_i_3__12_n_6 ;
  wire \counter_reg[0]_i_3__12_n_7 ;
  wire \counter_reg[0]_i_3__12_n_8 ;
  wire \counter_reg[12]_i_1__13_n_1 ;
  wire \counter_reg[12]_i_1__13_n_5 ;
  wire \counter_reg[12]_i_1__13_n_6 ;
  wire \counter_reg[12]_i_1__13_n_7 ;
  wire \counter_reg[12]_i_1__13_n_8 ;
  wire \counter_reg[16]_i_1__13_n_5 ;
  wire \counter_reg[16]_i_1__13_n_6 ;
  wire \counter_reg[16]_i_1__13_n_7 ;
  wire \counter_reg[16]_i_1__13_n_8 ;
  wire \counter_reg[4]_i_1__13_n_1 ;
  wire \counter_reg[4]_i_1__13_n_5 ;
  wire \counter_reg[4]_i_1__13_n_6 ;
  wire \counter_reg[4]_i_1__13_n_7 ;
  wire \counter_reg[4]_i_1__13_n_8 ;
  wire \counter_reg[8]_i_1__13_n_1 ;
  wire \counter_reg[8]_i_1__13_n_5 ;
  wire \counter_reg[8]_i_1__13_n_6 ;
  wire \counter_reg[8]_i_1__13_n_7 ;
  wire \counter_reg[8]_i_1__13_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__12_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__13_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__13_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__13_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__13_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__12
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__12_n_1),
        .O(btn_out_i_1__12_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__12
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__12_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__12_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__12
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__12_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__12_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__12 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__12_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__14 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__12_n_1),
        .O(\counter[0]_i_2__14_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__12 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[0]_i_3__12_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__12_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__12 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__12_n_1 ,\NLW_counter_reg[0]_i_3__12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__12_n_5 ,\counter_reg[0]_i_3__12_n_6 ,\counter_reg[0]_i_3__12_n_7 ,\counter_reg[0]_i_3__12_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__12_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[8]_i_1__13_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[8]_i_1__13_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[12]_i_1__13_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__12_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__13 
       (.CI(\counter_reg[8]_i_1__13_n_1 ),
        .CO({\counter_reg[12]_i_1__13_n_1 ,\NLW_counter_reg[12]_i_1__13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__13_n_5 ,\counter_reg[12]_i_1__13_n_6 ,\counter_reg[12]_i_1__13_n_7 ,\counter_reg[12]_i_1__13_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[12]_i_1__13_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[12]_i_1__13_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[12]_i_1__13_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[16]_i_1__13_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__12_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__13 
       (.CI(\counter_reg[12]_i_1__13_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__13_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__13_n_5 ,\counter_reg[16]_i_1__13_n_6 ,\counter_reg[16]_i_1__13_n_7 ,\counter_reg[16]_i_1__13_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[16]_i_1__13_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[16]_i_1__13_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[16]_i_1__13_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[0]_i_3__12_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[0]_i_3__12_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[0]_i_3__12_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[4]_i_1__13_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__12_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__13 
       (.CI(\counter_reg[0]_i_3__12_n_1 ),
        .CO({\counter_reg[4]_i_1__13_n_1 ,\NLW_counter_reg[4]_i_1__13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__13_n_5 ,\counter_reg[4]_i_1__13_n_6 ,\counter_reg[4]_i_1__13_n_7 ,\counter_reg[4]_i_1__13_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[4]_i_1__13_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[4]_i_1__13_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[4]_i_1__13_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__12_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[8]_i_1__13_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__12_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__13 
       (.CI(\counter_reg[4]_i_1__13_n_1 ),
        .CO({\counter_reg[8]_i_1__13_n_1 ,\NLW_counter_reg[8]_i_1__13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__13_n_5 ,\counter_reg[8]_i_1__13_n_6 ,\counter_reg[8]_i_1__13_n_7 ,\counter_reg[8]_i_1__13_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__14_n_1 ),
        .D(\counter_reg[8]_i_1__13_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__12_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_4
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__13_n_1;
  wire btn_out_i_2__13_n_1;
  wire btn_out_i_3__13_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__13_n_1 ;
  wire \counter[0]_i_2__15_n_1 ;
  wire \counter[0]_i_4__13_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__13_n_1 ;
  wire \counter_reg[0]_i_3__13_n_5 ;
  wire \counter_reg[0]_i_3__13_n_6 ;
  wire \counter_reg[0]_i_3__13_n_7 ;
  wire \counter_reg[0]_i_3__13_n_8 ;
  wire \counter_reg[12]_i_1__14_n_1 ;
  wire \counter_reg[12]_i_1__14_n_5 ;
  wire \counter_reg[12]_i_1__14_n_6 ;
  wire \counter_reg[12]_i_1__14_n_7 ;
  wire \counter_reg[12]_i_1__14_n_8 ;
  wire \counter_reg[16]_i_1__14_n_5 ;
  wire \counter_reg[16]_i_1__14_n_6 ;
  wire \counter_reg[16]_i_1__14_n_7 ;
  wire \counter_reg[16]_i_1__14_n_8 ;
  wire \counter_reg[4]_i_1__14_n_1 ;
  wire \counter_reg[4]_i_1__14_n_5 ;
  wire \counter_reg[4]_i_1__14_n_6 ;
  wire \counter_reg[4]_i_1__14_n_7 ;
  wire \counter_reg[4]_i_1__14_n_8 ;
  wire \counter_reg[8]_i_1__14_n_1 ;
  wire \counter_reg[8]_i_1__14_n_5 ;
  wire \counter_reg[8]_i_1__14_n_6 ;
  wire \counter_reg[8]_i_1__14_n_7 ;
  wire \counter_reg[8]_i_1__14_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__13_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__14_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__14_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__14_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__14_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__13
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__13_n_1),
        .O(btn_out_i_1__13_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__13
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__13_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__13_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__13
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__13_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__13_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__13 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__13_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__15 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__13_n_1),
        .O(\counter[0]_i_2__15_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__13 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[0]_i_3__13_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__13_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__13 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__13_n_1 ,\NLW_counter_reg[0]_i_3__13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__13_n_5 ,\counter_reg[0]_i_3__13_n_6 ,\counter_reg[0]_i_3__13_n_7 ,\counter_reg[0]_i_3__13_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__13_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[8]_i_1__14_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[8]_i_1__14_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[12]_i_1__14_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__13_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__14 
       (.CI(\counter_reg[8]_i_1__14_n_1 ),
        .CO({\counter_reg[12]_i_1__14_n_1 ,\NLW_counter_reg[12]_i_1__14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__14_n_5 ,\counter_reg[12]_i_1__14_n_6 ,\counter_reg[12]_i_1__14_n_7 ,\counter_reg[12]_i_1__14_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[12]_i_1__14_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[12]_i_1__14_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[12]_i_1__14_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[16]_i_1__14_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__13_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__14 
       (.CI(\counter_reg[12]_i_1__14_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__14_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__14_n_5 ,\counter_reg[16]_i_1__14_n_6 ,\counter_reg[16]_i_1__14_n_7 ,\counter_reg[16]_i_1__14_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[16]_i_1__14_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[16]_i_1__14_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[16]_i_1__14_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[0]_i_3__13_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[0]_i_3__13_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[0]_i_3__13_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[4]_i_1__14_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__13_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__14 
       (.CI(\counter_reg[0]_i_3__13_n_1 ),
        .CO({\counter_reg[4]_i_1__14_n_1 ,\NLW_counter_reg[4]_i_1__14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__14_n_5 ,\counter_reg[4]_i_1__14_n_6 ,\counter_reg[4]_i_1__14_n_7 ,\counter_reg[4]_i_1__14_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[4]_i_1__14_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[4]_i_1__14_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[4]_i_1__14_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__13_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[8]_i_1__14_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__13_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__14 
       (.CI(\counter_reg[4]_i_1__14_n_1 ),
        .CO({\counter_reg[8]_i_1__14_n_1 ,\NLW_counter_reg[8]_i_1__14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__14_n_5 ,\counter_reg[8]_i_1__14_n_6 ,\counter_reg[8]_i_1__14_n_7 ,\counter_reg[8]_i_1__14_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__15_n_1 ),
        .D(\counter_reg[8]_i_1__14_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__13_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_5
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__14_n_1;
  wire btn_out_i_2__14_n_1;
  wire btn_out_i_3__14_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__14_n_1 ;
  wire \counter[0]_i_2__16_n_1 ;
  wire \counter[0]_i_4__14_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__14_n_1 ;
  wire \counter_reg[0]_i_3__14_n_5 ;
  wire \counter_reg[0]_i_3__14_n_6 ;
  wire \counter_reg[0]_i_3__14_n_7 ;
  wire \counter_reg[0]_i_3__14_n_8 ;
  wire \counter_reg[12]_i_1__15_n_1 ;
  wire \counter_reg[12]_i_1__15_n_5 ;
  wire \counter_reg[12]_i_1__15_n_6 ;
  wire \counter_reg[12]_i_1__15_n_7 ;
  wire \counter_reg[12]_i_1__15_n_8 ;
  wire \counter_reg[16]_i_1__15_n_5 ;
  wire \counter_reg[16]_i_1__15_n_6 ;
  wire \counter_reg[16]_i_1__15_n_7 ;
  wire \counter_reg[16]_i_1__15_n_8 ;
  wire \counter_reg[4]_i_1__15_n_1 ;
  wire \counter_reg[4]_i_1__15_n_5 ;
  wire \counter_reg[4]_i_1__15_n_6 ;
  wire \counter_reg[4]_i_1__15_n_7 ;
  wire \counter_reg[4]_i_1__15_n_8 ;
  wire \counter_reg[8]_i_1__15_n_1 ;
  wire \counter_reg[8]_i_1__15_n_5 ;
  wire \counter_reg[8]_i_1__15_n_6 ;
  wire \counter_reg[8]_i_1__15_n_7 ;
  wire \counter_reg[8]_i_1__15_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__14_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__15_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__15_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__15_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__15_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__14
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__14_n_1),
        .O(btn_out_i_1__14_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__14
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__14_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__14_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__14
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__14_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__14_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__14 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__14_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__16 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__14_n_1),
        .O(\counter[0]_i_2__16_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__14 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[0]_i_3__14_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__14_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__14 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__14_n_1 ,\NLW_counter_reg[0]_i_3__14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__14_n_5 ,\counter_reg[0]_i_3__14_n_6 ,\counter_reg[0]_i_3__14_n_7 ,\counter_reg[0]_i_3__14_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__14_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[8]_i_1__15_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[8]_i_1__15_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[12]_i_1__15_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__14_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__15 
       (.CI(\counter_reg[8]_i_1__15_n_1 ),
        .CO({\counter_reg[12]_i_1__15_n_1 ,\NLW_counter_reg[12]_i_1__15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__15_n_5 ,\counter_reg[12]_i_1__15_n_6 ,\counter_reg[12]_i_1__15_n_7 ,\counter_reg[12]_i_1__15_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[12]_i_1__15_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[12]_i_1__15_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[12]_i_1__15_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[16]_i_1__15_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__14_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__15 
       (.CI(\counter_reg[12]_i_1__15_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__15_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__15_n_5 ,\counter_reg[16]_i_1__15_n_6 ,\counter_reg[16]_i_1__15_n_7 ,\counter_reg[16]_i_1__15_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[16]_i_1__15_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[16]_i_1__15_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[16]_i_1__15_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[0]_i_3__14_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[0]_i_3__14_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[0]_i_3__14_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[4]_i_1__15_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__14_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__15 
       (.CI(\counter_reg[0]_i_3__14_n_1 ),
        .CO({\counter_reg[4]_i_1__15_n_1 ,\NLW_counter_reg[4]_i_1__15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__15_n_5 ,\counter_reg[4]_i_1__15_n_6 ,\counter_reg[4]_i_1__15_n_7 ,\counter_reg[4]_i_1__15_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[4]_i_1__15_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[4]_i_1__15_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[4]_i_1__15_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__14_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[8]_i_1__15_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__14_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__15 
       (.CI(\counter_reg[4]_i_1__15_n_1 ),
        .CO({\counter_reg[8]_i_1__15_n_1 ,\NLW_counter_reg[8]_i_1__15_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__15_n_5 ,\counter_reg[8]_i_1__15_n_6 ,\counter_reg[8]_i_1__15_n_7 ,\counter_reg[8]_i_1__15_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__16_n_1 ),
        .D(\counter_reg[8]_i_1__15_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__14_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_6
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__0_n_1;
  wire btn_out_i_2__0_n_1;
  wire btn_out_i_3__0_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__0_n_1 ;
  wire \counter[0]_i_2__2_n_1 ;
  wire \counter[0]_i_4__0_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__0_n_1 ;
  wire \counter_reg[0]_i_3__0_n_5 ;
  wire \counter_reg[0]_i_3__0_n_6 ;
  wire \counter_reg[0]_i_3__0_n_7 ;
  wire \counter_reg[0]_i_3__0_n_8 ;
  wire \counter_reg[12]_i_1__1_n_1 ;
  wire \counter_reg[12]_i_1__1_n_5 ;
  wire \counter_reg[12]_i_1__1_n_6 ;
  wire \counter_reg[12]_i_1__1_n_7 ;
  wire \counter_reg[12]_i_1__1_n_8 ;
  wire \counter_reg[16]_i_1__1_n_5 ;
  wire \counter_reg[16]_i_1__1_n_6 ;
  wire \counter_reg[16]_i_1__1_n_7 ;
  wire \counter_reg[16]_i_1__1_n_8 ;
  wire \counter_reg[4]_i_1__1_n_1 ;
  wire \counter_reg[4]_i_1__1_n_5 ;
  wire \counter_reg[4]_i_1__1_n_6 ;
  wire \counter_reg[4]_i_1__1_n_7 ;
  wire \counter_reg[4]_i_1__1_n_8 ;
  wire \counter_reg[8]_i_1__1_n_1 ;
  wire \counter_reg[8]_i_1__1_n_5 ;
  wire \counter_reg[8]_i_1__1_n_6 ;
  wire \counter_reg[8]_i_1__1_n_7 ;
  wire \counter_reg[8]_i_1__1_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__0
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__0_n_1),
        .O(btn_out_i_1__0_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__0
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__0_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__0_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__0
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__0_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__0 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__0_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__2 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__0_n_1),
        .O(\counter[0]_i_2__2_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__0 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[0]_i_3__0_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__0_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__0_n_1 ,\NLW_counter_reg[0]_i_3__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__0_n_5 ,\counter_reg[0]_i_3__0_n_6 ,\counter_reg[0]_i_3__0_n_7 ,\counter_reg[0]_i_3__0_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__0_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[8]_i_1__1_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[8]_i_1__1_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[12]_i_1__1_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__0_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__1 
       (.CI(\counter_reg[8]_i_1__1_n_1 ),
        .CO({\counter_reg[12]_i_1__1_n_1 ,\NLW_counter_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__1_n_5 ,\counter_reg[12]_i_1__1_n_6 ,\counter_reg[12]_i_1__1_n_7 ,\counter_reg[12]_i_1__1_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[12]_i_1__1_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[12]_i_1__1_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[12]_i_1__1_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[16]_i_1__1_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__0_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__1 
       (.CI(\counter_reg[12]_i_1__1_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__1_n_5 ,\counter_reg[16]_i_1__1_n_6 ,\counter_reg[16]_i_1__1_n_7 ,\counter_reg[16]_i_1__1_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[16]_i_1__1_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[16]_i_1__1_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[16]_i_1__1_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[0]_i_3__0_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[0]_i_3__0_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[0]_i_3__0_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[4]_i_1__1_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__0_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__1 
       (.CI(\counter_reg[0]_i_3__0_n_1 ),
        .CO({\counter_reg[4]_i_1__1_n_1 ,\NLW_counter_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__1_n_5 ,\counter_reg[4]_i_1__1_n_6 ,\counter_reg[4]_i_1__1_n_7 ,\counter_reg[4]_i_1__1_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[4]_i_1__1_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[4]_i_1__1_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[4]_i_1__1_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[8]_i_1__1_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__0_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__1 
       (.CI(\counter_reg[4]_i_1__1_n_1 ),
        .CO({\counter_reg[8]_i_1__1_n_1 ,\NLW_counter_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__1_n_5 ,\counter_reg[8]_i_1__1_n_6 ,\counter_reg[8]_i_1__1_n_7 ,\counter_reg[8]_i_1__1_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__2_n_1 ),
        .D(\counter_reg[8]_i_1__1_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__0_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_7
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__1_n_1;
  wire btn_out_i_2__1_n_1;
  wire btn_out_i_3__1_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__1_n_1 ;
  wire \counter[0]_i_2__3_n_1 ;
  wire \counter[0]_i_4__1_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__1_n_1 ;
  wire \counter_reg[0]_i_3__1_n_5 ;
  wire \counter_reg[0]_i_3__1_n_6 ;
  wire \counter_reg[0]_i_3__1_n_7 ;
  wire \counter_reg[0]_i_3__1_n_8 ;
  wire \counter_reg[12]_i_1__2_n_1 ;
  wire \counter_reg[12]_i_1__2_n_5 ;
  wire \counter_reg[12]_i_1__2_n_6 ;
  wire \counter_reg[12]_i_1__2_n_7 ;
  wire \counter_reg[12]_i_1__2_n_8 ;
  wire \counter_reg[16]_i_1__2_n_5 ;
  wire \counter_reg[16]_i_1__2_n_6 ;
  wire \counter_reg[16]_i_1__2_n_7 ;
  wire \counter_reg[16]_i_1__2_n_8 ;
  wire \counter_reg[4]_i_1__2_n_1 ;
  wire \counter_reg[4]_i_1__2_n_5 ;
  wire \counter_reg[4]_i_1__2_n_6 ;
  wire \counter_reg[4]_i_1__2_n_7 ;
  wire \counter_reg[4]_i_1__2_n_8 ;
  wire \counter_reg[8]_i_1__2_n_1 ;
  wire \counter_reg[8]_i_1__2_n_5 ;
  wire \counter_reg[8]_i_1__2_n_6 ;
  wire \counter_reg[8]_i_1__2_n_7 ;
  wire \counter_reg[8]_i_1__2_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__1
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__1_n_1),
        .O(btn_out_i_1__1_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__1
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__1_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__1_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__1
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__1_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__1 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__1_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__3 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__1_n_1),
        .O(\counter[0]_i_2__3_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__1 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[0]_i_3__1_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__1_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__1_n_1 ,\NLW_counter_reg[0]_i_3__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__1_n_5 ,\counter_reg[0]_i_3__1_n_6 ,\counter_reg[0]_i_3__1_n_7 ,\counter_reg[0]_i_3__1_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__1_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[8]_i_1__2_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[8]_i_1__2_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[12]_i_1__2_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__1_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__2 
       (.CI(\counter_reg[8]_i_1__2_n_1 ),
        .CO({\counter_reg[12]_i_1__2_n_1 ,\NLW_counter_reg[12]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__2_n_5 ,\counter_reg[12]_i_1__2_n_6 ,\counter_reg[12]_i_1__2_n_7 ,\counter_reg[12]_i_1__2_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[12]_i_1__2_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[12]_i_1__2_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[12]_i_1__2_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[16]_i_1__2_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__1_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__2 
       (.CI(\counter_reg[12]_i_1__2_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__2_n_5 ,\counter_reg[16]_i_1__2_n_6 ,\counter_reg[16]_i_1__2_n_7 ,\counter_reg[16]_i_1__2_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[16]_i_1__2_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[16]_i_1__2_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[16]_i_1__2_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[0]_i_3__1_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[0]_i_3__1_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[0]_i_3__1_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[4]_i_1__2_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__1_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__2 
       (.CI(\counter_reg[0]_i_3__1_n_1 ),
        .CO({\counter_reg[4]_i_1__2_n_1 ,\NLW_counter_reg[4]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__2_n_5 ,\counter_reg[4]_i_1__2_n_6 ,\counter_reg[4]_i_1__2_n_7 ,\counter_reg[4]_i_1__2_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[4]_i_1__2_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[4]_i_1__2_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[4]_i_1__2_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[8]_i_1__2_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__1_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__2 
       (.CI(\counter_reg[4]_i_1__2_n_1 ),
        .CO({\counter_reg[8]_i_1__2_n_1 ,\NLW_counter_reg[8]_i_1__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__2_n_5 ,\counter_reg[8]_i_1__2_n_6 ,\counter_reg[8]_i_1__2_n_7 ,\counter_reg[8]_i_1__2_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__3_n_1 ),
        .D(\counter_reg[8]_i_1__2_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__1_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_8
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__2_n_1;
  wire btn_out_i_2__2_n_1;
  wire btn_out_i_3__2_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__2_n_1 ;
  wire \counter[0]_i_2__4_n_1 ;
  wire \counter[0]_i_4__2_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__2_n_1 ;
  wire \counter_reg[0]_i_3__2_n_5 ;
  wire \counter_reg[0]_i_3__2_n_6 ;
  wire \counter_reg[0]_i_3__2_n_7 ;
  wire \counter_reg[0]_i_3__2_n_8 ;
  wire \counter_reg[12]_i_1__3_n_1 ;
  wire \counter_reg[12]_i_1__3_n_5 ;
  wire \counter_reg[12]_i_1__3_n_6 ;
  wire \counter_reg[12]_i_1__3_n_7 ;
  wire \counter_reg[12]_i_1__3_n_8 ;
  wire \counter_reg[16]_i_1__3_n_5 ;
  wire \counter_reg[16]_i_1__3_n_6 ;
  wire \counter_reg[16]_i_1__3_n_7 ;
  wire \counter_reg[16]_i_1__3_n_8 ;
  wire \counter_reg[4]_i_1__3_n_1 ;
  wire \counter_reg[4]_i_1__3_n_5 ;
  wire \counter_reg[4]_i_1__3_n_6 ;
  wire \counter_reg[4]_i_1__3_n_7 ;
  wire \counter_reg[4]_i_1__3_n_8 ;
  wire \counter_reg[8]_i_1__3_n_1 ;
  wire \counter_reg[8]_i_1__3_n_5 ;
  wire \counter_reg[8]_i_1__3_n_6 ;
  wire \counter_reg[8]_i_1__3_n_7 ;
  wire \counter_reg[8]_i_1__3_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__2
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__2_n_1),
        .O(btn_out_i_1__2_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__2
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__2_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__2_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__2
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__2_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__2 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__2_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__4 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__2_n_1),
        .O(\counter[0]_i_2__4_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__2 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[0]_i_3__2_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__2_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__2_n_1 ,\NLW_counter_reg[0]_i_3__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__2_n_5 ,\counter_reg[0]_i_3__2_n_6 ,\counter_reg[0]_i_3__2_n_7 ,\counter_reg[0]_i_3__2_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__2_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[8]_i_1__3_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[8]_i_1__3_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[12]_i_1__3_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__2_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__3 
       (.CI(\counter_reg[8]_i_1__3_n_1 ),
        .CO({\counter_reg[12]_i_1__3_n_1 ,\NLW_counter_reg[12]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__3_n_5 ,\counter_reg[12]_i_1__3_n_6 ,\counter_reg[12]_i_1__3_n_7 ,\counter_reg[12]_i_1__3_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[12]_i_1__3_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[12]_i_1__3_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[12]_i_1__3_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[16]_i_1__3_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__2_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__3 
       (.CI(\counter_reg[12]_i_1__3_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__3_n_5 ,\counter_reg[16]_i_1__3_n_6 ,\counter_reg[16]_i_1__3_n_7 ,\counter_reg[16]_i_1__3_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[16]_i_1__3_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[16]_i_1__3_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[16]_i_1__3_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[0]_i_3__2_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[0]_i_3__2_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[0]_i_3__2_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[4]_i_1__3_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__2_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__3 
       (.CI(\counter_reg[0]_i_3__2_n_1 ),
        .CO({\counter_reg[4]_i_1__3_n_1 ,\NLW_counter_reg[4]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__3_n_5 ,\counter_reg[4]_i_1__3_n_6 ,\counter_reg[4]_i_1__3_n_7 ,\counter_reg[4]_i_1__3_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[4]_i_1__3_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[4]_i_1__3_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[4]_i_1__3_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[8]_i_1__3_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__2_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__3 
       (.CI(\counter_reg[4]_i_1__3_n_1 ),
        .CO({\counter_reg[8]_i_1__3_n_1 ,\NLW_counter_reg[8]_i_1__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__3_n_5 ,\counter_reg[8]_i_1__3_n_6 ,\counter_reg[8]_i_1__3_n_7 ,\counter_reg[8]_i_1__3_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__4_n_1 ),
        .D(\counter_reg[8]_i_1__3_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__2_n_1 ));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_9
   (led_OBUF,
    clk_IBUF_BUFG,
    Q);
  output [0:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]Q;

  wire [0:0]Q;
  wire btn_out_i_1__3_n_1;
  wire btn_out_i_2__3_n_1;
  wire btn_out_i_3__3_n_1;
  wire btn_stable_reg_n_1;
  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1__3_n_1 ;
  wire \counter[0]_i_2__5_n_1 ;
  wire \counter[0]_i_4__3_n_1 ;
  wire [19:6]counter_reg;
  wire \counter_reg[0]_i_3__3_n_1 ;
  wire \counter_reg[0]_i_3__3_n_5 ;
  wire \counter_reg[0]_i_3__3_n_6 ;
  wire \counter_reg[0]_i_3__3_n_7 ;
  wire \counter_reg[0]_i_3__3_n_8 ;
  wire \counter_reg[12]_i_1__4_n_1 ;
  wire \counter_reg[12]_i_1__4_n_5 ;
  wire \counter_reg[12]_i_1__4_n_6 ;
  wire \counter_reg[12]_i_1__4_n_7 ;
  wire \counter_reg[12]_i_1__4_n_8 ;
  wire \counter_reg[16]_i_1__4_n_5 ;
  wire \counter_reg[16]_i_1__4_n_6 ;
  wire \counter_reg[16]_i_1__4_n_7 ;
  wire \counter_reg[16]_i_1__4_n_8 ;
  wire \counter_reg[4]_i_1__4_n_1 ;
  wire \counter_reg[4]_i_1__4_n_5 ;
  wire \counter_reg[4]_i_1__4_n_6 ;
  wire \counter_reg[4]_i_1__4_n_7 ;
  wire \counter_reg[4]_i_1__4_n_8 ;
  wire \counter_reg[8]_i_1__4_n_1 ;
  wire \counter_reg[8]_i_1__4_n_5 ;
  wire \counter_reg[8]_i_1__4_n_6 ;
  wire \counter_reg[8]_i_1__4_n_7 ;
  wire \counter_reg[8]_i_1__4_n_8 ;
  wire \counter_reg_n_1_[0] ;
  wire \counter_reg_n_1_[1] ;
  wire \counter_reg_n_1_[2] ;
  wire \counter_reg_n_1_[3] ;
  wire \counter_reg_n_1_[4] ;
  wire \counter_reg_n_1_[5] ;
  wire [0:0]led_OBUF;
  wire [2:0]\NLW_counter_reg[0]_i_3__3_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__4_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__4_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__4_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000800080000000)) 
    btn_out_i_1__3
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__3_n_1),
        .O(btn_out_i_1__3_n_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    btn_out_i_2__3
       (.I0(counter_reg[14]),
        .I1(btn_out_i_3__3_n_1),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(counter_reg[13]),
        .I5(counter_reg[12]),
        .O(btn_out_i_2__3_n_1));
  LUT4 #(
    .INIT(16'h01FF)) 
    btn_out_i_3__3
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(btn_out_i_3__3_n_1));
  FDRE #(
    .INIT(1'b0)) 
    btn_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(btn_out_i_1__3_n_1),
        .D(btn_stable_reg_n_1),
        .Q(led_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    btn_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(btn_stable_reg_n_1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1__3 
       (.I0(Q),
        .I1(btn_stable_reg_n_1),
        .O(\counter[0]_i_1__3_n_1 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[0]_i_2__5 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[16]),
        .I3(counter_reg[17]),
        .I4(counter_reg[15]),
        .I5(btn_out_i_2__3_n_1),
        .O(\counter[0]_i_2__5_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__3 
       (.I0(\counter_reg_n_1_[0] ),
        .O(\counter[0]_i_4__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[0]_i_3__3_n_8 ),
        .Q(\counter_reg_n_1_[0] ),
        .R(\counter[0]_i_1__3_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_3__3 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3__3_n_1 ,\NLW_counter_reg[0]_i_3__3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_3__3_n_5 ,\counter_reg[0]_i_3__3_n_6 ,\counter_reg[0]_i_3__3_n_7 ,\counter_reg[0]_i_3__3_n_8 }),
        .S({\counter_reg_n_1_[3] ,\counter_reg_n_1_[2] ,\counter_reg_n_1_[1] ,\counter[0]_i_4__3_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[8]_i_1__4_n_6 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[8]_i_1__4_n_5 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[12]_i_1__4_n_8 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__3_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1__4 
       (.CI(\counter_reg[8]_i_1__4_n_1 ),
        .CO({\counter_reg[12]_i_1__4_n_1 ,\NLW_counter_reg[12]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__4_n_5 ,\counter_reg[12]_i_1__4_n_6 ,\counter_reg[12]_i_1__4_n_7 ,\counter_reg[12]_i_1__4_n_8 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[12]_i_1__4_n_7 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[12]_i_1__4_n_6 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[12]_i_1__4_n_5 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[16]_i_1__4_n_8 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__3_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1__4 
       (.CI(\counter_reg[12]_i_1__4_n_1 ),
        .CO(\NLW_counter_reg[16]_i_1__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__4_n_5 ,\counter_reg[16]_i_1__4_n_6 ,\counter_reg[16]_i_1__4_n_7 ,\counter_reg[16]_i_1__4_n_8 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[16]_i_1__4_n_7 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[16]_i_1__4_n_6 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[16]_i_1__4_n_5 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[0]_i_3__3_n_7 ),
        .Q(\counter_reg_n_1_[1] ),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[0]_i_3__3_n_6 ),
        .Q(\counter_reg_n_1_[2] ),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[0]_i_3__3_n_5 ),
        .Q(\counter_reg_n_1_[3] ),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[4]_i_1__4_n_8 ),
        .Q(\counter_reg_n_1_[4] ),
        .R(\counter[0]_i_1__3_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1__4 
       (.CI(\counter_reg[0]_i_3__3_n_1 ),
        .CO({\counter_reg[4]_i_1__4_n_1 ,\NLW_counter_reg[4]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__4_n_5 ,\counter_reg[4]_i_1__4_n_6 ,\counter_reg[4]_i_1__4_n_7 ,\counter_reg[4]_i_1__4_n_8 }),
        .S({counter_reg[7:6],\counter_reg_n_1_[5] ,\counter_reg_n_1_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[4]_i_1__4_n_7 ),
        .Q(\counter_reg_n_1_[5] ),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[4]_i_1__4_n_6 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[4]_i_1__4_n_5 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[8]_i_1__4_n_8 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__3_n_1 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1__4 
       (.CI(\counter_reg[4]_i_1__4_n_1 ),
        .CO({\counter_reg[8]_i_1__4_n_1 ,\NLW_counter_reg[8]_i_1__4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__4_n_5 ,\counter_reg[8]_i_1__4_n_6 ,\counter_reg[8]_i_1__4_n_7 ,\counter_reg[8]_i_1__4_n_8 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter[0]_i_2__5_n_1 ),
        .D(\counter_reg[8]_i_1__4_n_7 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__3_n_1 ));
endmodule

module graphics_renderer
   (A,
    \gpu_py_reg[4]_0 ,
    \gpu_px_reg[9]_0 ,
    ADDRARDADDR,
    \gpu_px_reg[3]_0 ,
    C,
    D,
    \pixel_data_reg[1] ,
    clk_IBUF_BUFG);
  output [8:0]A;
  output [3:0]\gpu_py_reg[4]_0 ;
  output \gpu_px_reg[9]_0 ;
  output [6:0]ADDRARDADDR;
  output [2:0]\gpu_px_reg[3]_0 ;
  output [9:0]C;
  output [1:0]D;
  input \pixel_data_reg[1] ;
  input clk_IBUF_BUFG;

  wire [8:0]A;
  wire [6:0]ADDRARDADDR;
  wire [9:0]C;
  wire [1:0]D;
  wire clk_IBUF_BUFG;
  wire [9:0]gpu_pos_x;
  wire [8:0]gpu_pos_y;
  wire [2:0]\gpu_px_reg[3]_0 ;
  wire \gpu_px_reg[9]_0 ;
  wire [3:0]\gpu_py_reg[4]_0 ;
  wire \pixel_data[2]_i_3_n_1 ;
  wire \pixel_data[2]_i_6_n_1 ;
  wire \pixel_data_reg[1] ;
  wire vram_wa_i_21_n_1;
  wire vram_wa_i_22_n_1;
  wire vram_wa_i_23_n_1;
  wire vram_wa_i_24_n_1;

  LUT4 #(
    .INIT(16'h457A)) 
    addr_reg_reg_i_1
       (.I0(gpu_pos_x[7]),
        .I1(gpu_pos_x[4]),
        .I2(gpu_pos_x[5]),
        .I3(gpu_pos_x[6]),
        .O(ADDRARDADDR[6]));
  LUT4 #(
    .INIT(16'h1000)) 
    addr_reg_reg_i_2
       (.I0(gpu_pos_x[7]),
        .I1(gpu_pos_x[4]),
        .I2(gpu_pos_x[6]),
        .I3(gpu_pos_x[5]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'h02)) 
    addr_reg_reg_i_3
       (.I0(gpu_pos_x[7]),
        .I1(gpu_pos_x[6]),
        .I2(gpu_pos_x[4]),
        .O(ADDRARDADDR[4]));
  LUT4 #(
    .INIT(16'h2002)) 
    addr_reg_reg_i_4
       (.I0(gpu_pos_x[6]),
        .I1(gpu_pos_x[7]),
        .I2(gpu_pos_x[4]),
        .I3(gpu_pos_x[5]),
        .O(ADDRARDADDR[3]));
  LUT4 #(
    .INIT(16'h11A6)) 
    addr_reg_reg_i_5
       (.I0(gpu_pos_x[6]),
        .I1(gpu_pos_x[5]),
        .I2(gpu_pos_x[4]),
        .I3(gpu_pos_x[7]),
        .O(ADDRARDADDR[2]));
  LUT4 #(
    .INIT(16'h0584)) 
    addr_reg_reg_i_6
       (.I0(gpu_pos_x[4]),
        .I1(gpu_pos_x[5]),
        .I2(gpu_pos_x[6]),
        .I3(gpu_pos_x[7]),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'h10E6)) 
    addr_reg_reg_i_7
       (.I0(gpu_pos_x[6]),
        .I1(gpu_pos_x[5]),
        .I2(gpu_pos_x[4]),
        .I3(gpu_pos_x[7]),
        .O(ADDRARDADDR[0]));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[0]),
        .Q(gpu_pos_x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[1]),
        .Q(\gpu_px_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[2]),
        .Q(\gpu_px_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[3]),
        .Q(\gpu_px_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[4]),
        .Q(gpu_pos_x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[5]),
        .Q(gpu_pos_x[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[6]),
        .Q(gpu_pos_x[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[7]),
        .Q(gpu_pos_x[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[8]),
        .Q(gpu_pos_x[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_px_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(C[9]),
        .Q(gpu_pos_x[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[0]),
        .Q(gpu_pos_y[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[1]),
        .Q(\gpu_py_reg[4]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[2]),
        .Q(\gpu_py_reg[4]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[3]),
        .Q(\gpu_py_reg[4]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[4]),
        .Q(\gpu_py_reg[4]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[5]),
        .Q(gpu_pos_y[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[6]),
        .Q(gpu_pos_y[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[7]),
        .Q(gpu_pos_y[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpu_py_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\gpu_px_reg[9]_0 ),
        .D(A[8]),
        .Q(gpu_pos_y[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF803FFFFFFFF)) 
    \pixel_data[1]_i_1 
       (.I0(gpu_pos_x[4]),
        .I1(gpu_pos_x[5]),
        .I2(gpu_pos_x[6]),
        .I3(gpu_pos_x[7]),
        .I4(\pixel_data[2]_i_3_n_1 ),
        .I5(\pixel_data_reg[1] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000155550)) 
    \pixel_data[2]_i_1 
       (.I0(\pixel_data_reg[1] ),
        .I1(gpu_pos_x[4]),
        .I2(gpu_pos_x[5]),
        .I3(gpu_pos_x[6]),
        .I4(gpu_pos_x[7]),
        .I5(\pixel_data[2]_i_3_n_1 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pixel_data[2]_i_3 
       (.I0(\pixel_data[2]_i_6_n_1 ),
        .I1(gpu_pos_y[7]),
        .I2(gpu_pos_x[9]),
        .I3(gpu_pos_y[6]),
        .O(\pixel_data[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDFDFDFDDF)) 
    \pixel_data[2]_i_6 
       (.I0(gpu_pos_y[5]),
        .I1(gpu_pos_y[8]),
        .I2(gpu_pos_x[8]),
        .I3(gpu_pos_x[7]),
        .I4(gpu_pos_x[6]),
        .I5(gpu_pos_x[5]),
        .O(\pixel_data[2]_i_6_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    vram_wa_i_1
       (.I0(vram_wa_i_21_n_1),
        .I1(vram_wa_i_22_n_1),
        .O(\gpu_px_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    vram_wa_i_10
       (.I0(vram_wa_i_22_n_1),
        .I1(gpu_pos_y[0]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h0400000020222222)) 
    vram_wa_i_11
       (.I0(gpu_pos_x[9]),
        .I1(gpu_pos_x[7]),
        .I2(vram_wa_i_24_n_1),
        .I3(gpu_pos_x[6]),
        .I4(gpu_pos_x[5]),
        .I5(gpu_pos_x[8]),
        .O(C[9]));
  LUT6 #(
    .INIT(64'h00000000AA6AAAAA)) 
    vram_wa_i_12
       (.I0(gpu_pos_x[8]),
        .I1(gpu_pos_x[5]),
        .I2(gpu_pos_x[6]),
        .I3(vram_wa_i_24_n_1),
        .I4(gpu_pos_x[7]),
        .I5(gpu_pos_x[9]),
        .O(C[8]));
  LUT5 #(
    .INIT(32'h00009AAA)) 
    vram_wa_i_13
       (.I0(gpu_pos_x[7]),
        .I1(vram_wa_i_24_n_1),
        .I2(gpu_pos_x[6]),
        .I3(gpu_pos_x[5]),
        .I4(gpu_pos_x[9]),
        .O(C[7]));
  LUT6 #(
    .INIT(64'h5005550070077700)) 
    vram_wa_i_14
       (.I0(gpu_pos_x[9]),
        .I1(gpu_pos_x[7]),
        .I2(vram_wa_i_24_n_1),
        .I3(gpu_pos_x[6]),
        .I4(gpu_pos_x[5]),
        .I5(gpu_pos_x[8]),
        .O(C[6]));
  LUT5 #(
    .INIT(32'h50057007)) 
    vram_wa_i_15
       (.I0(gpu_pos_x[9]),
        .I1(gpu_pos_x[7]),
        .I2(vram_wa_i_24_n_1),
        .I3(gpu_pos_x[5]),
        .I4(gpu_pos_x[8]),
        .O(C[5]));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    vram_wa_i_16
       (.I0(vram_wa_i_21_n_1),
        .I1(\gpu_px_reg[3]_0 [0]),
        .I2(gpu_pos_x[0]),
        .I3(\gpu_px_reg[3]_0 [1]),
        .I4(\gpu_px_reg[3]_0 [2]),
        .I5(gpu_pos_x[4]),
        .O(C[4]));
  LUT5 #(
    .INIT(32'h15554000)) 
    vram_wa_i_17
       (.I0(vram_wa_i_21_n_1),
        .I1(\gpu_px_reg[3]_0 [1]),
        .I2(gpu_pos_x[0]),
        .I3(\gpu_px_reg[3]_0 [0]),
        .I4(\gpu_px_reg[3]_0 [2]),
        .O(C[3]));
  LUT4 #(
    .INIT(16'h1540)) 
    vram_wa_i_18
       (.I0(vram_wa_i_21_n_1),
        .I1(\gpu_px_reg[3]_0 [0]),
        .I2(gpu_pos_x[0]),
        .I3(\gpu_px_reg[3]_0 [1]),
        .O(C[2]));
  LUT3 #(
    .INIT(8'h14)) 
    vram_wa_i_19
       (.I0(vram_wa_i_21_n_1),
        .I1(\gpu_px_reg[3]_0 [0]),
        .I2(gpu_pos_x[0]),
        .O(C[1]));
  LUT5 #(
    .INIT(32'h6A2A2AAA)) 
    vram_wa_i_2
       (.I0(gpu_pos_y[8]),
        .I1(gpu_pos_y[6]),
        .I2(gpu_pos_y[7]),
        .I3(gpu_pos_y[5]),
        .I4(vram_wa_i_23_n_1),
        .O(A[8]));
  LUT2 #(
    .INIT(4'h1)) 
    vram_wa_i_20
       (.I0(vram_wa_i_21_n_1),
        .I1(gpu_pos_x[0]),
        .O(C[0]));
  LUT6 #(
    .INIT(64'hA2AAAAAA8A888888)) 
    vram_wa_i_21
       (.I0(gpu_pos_x[9]),
        .I1(gpu_pos_x[7]),
        .I2(vram_wa_i_24_n_1),
        .I3(gpu_pos_x[6]),
        .I4(gpu_pos_x[5]),
        .I5(gpu_pos_x[8]),
        .O(vram_wa_i_21_n_1));
  LUT5 #(
    .INIT(32'h7F7F7FFF)) 
    vram_wa_i_22
       (.I0(gpu_pos_y[8]),
        .I1(gpu_pos_y[6]),
        .I2(gpu_pos_y[7]),
        .I3(gpu_pos_y[5]),
        .I4(vram_wa_i_23_n_1),
        .O(vram_wa_i_22_n_1));
  LUT5 #(
    .INIT(32'h80000000)) 
    vram_wa_i_23
       (.I0(\gpu_py_reg[4]_0 [3]),
        .I1(\gpu_py_reg[4]_0 [2]),
        .I2(\gpu_py_reg[4]_0 [0]),
        .I3(gpu_pos_y[0]),
        .I4(\gpu_py_reg[4]_0 [1]),
        .O(vram_wa_i_23_n_1));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    vram_wa_i_24
       (.I0(\gpu_px_reg[3]_0 [0]),
        .I1(gpu_pos_x[0]),
        .I2(\gpu_px_reg[3]_0 [1]),
        .I3(\gpu_px_reg[3]_0 [2]),
        .I4(gpu_pos_x[4]),
        .O(vram_wa_i_24_n_1));
  LUT5 #(
    .INIT(32'h577F8080)) 
    vram_wa_i_3
       (.I0(gpu_pos_y[6]),
        .I1(gpu_pos_y[5]),
        .I2(vram_wa_i_23_n_1),
        .I3(gpu_pos_y[8]),
        .I4(gpu_pos_y[7]),
        .O(A[7]));
  LUT5 #(
    .INIT(32'h334C4CCC)) 
    vram_wa_i_4
       (.I0(gpu_pos_y[8]),
        .I1(gpu_pos_y[6]),
        .I2(gpu_pos_y[7]),
        .I3(gpu_pos_y[5]),
        .I4(vram_wa_i_23_n_1),
        .O(A[6]));
  LUT5 #(
    .INIT(32'h007F7F00)) 
    vram_wa_i_5
       (.I0(gpu_pos_y[8]),
        .I1(gpu_pos_y[6]),
        .I2(gpu_pos_y[7]),
        .I3(gpu_pos_y[5]),
        .I4(vram_wa_i_23_n_1),
        .O(A[5]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    vram_wa_i_6
       (.I0(vram_wa_i_22_n_1),
        .I1(\gpu_py_reg[4]_0 [2]),
        .I2(\gpu_py_reg[4]_0 [0]),
        .I3(gpu_pos_y[0]),
        .I4(\gpu_py_reg[4]_0 [1]),
        .I5(\gpu_py_reg[4]_0 [3]),
        .O(A[4]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    vram_wa_i_7
       (.I0(vram_wa_i_22_n_1),
        .I1(\gpu_py_reg[4]_0 [1]),
        .I2(gpu_pos_y[0]),
        .I3(\gpu_py_reg[4]_0 [0]),
        .I4(\gpu_py_reg[4]_0 [2]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'h2A80)) 
    vram_wa_i_8
       (.I0(vram_wa_i_22_n_1),
        .I1(\gpu_py_reg[4]_0 [0]),
        .I2(gpu_pos_y[0]),
        .I3(\gpu_py_reg[4]_0 [1]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'h28)) 
    vram_wa_i_9
       (.I0(vram_wa_i_22_n_1),
        .I1(\gpu_py_reg[4]_0 [0]),
        .I2(gpu_pos_y[0]),
        .O(A[1]));
endmodule

module quad_7_seg
   (Q,
    an_OBUF,
    CLK);
  output [1:0]Q;
  output [3:0]an_OBUF;
  input CLK;

  wire CLK;
  wire [1:0]Q;
  wire an1;
  wire [3:0]an_OBUF;
  wire [1:1]p_0_in;

  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(Q[0]),
        .O(an1));
  LUT2 #(
    .INIT(4'h6)) 
    \q[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(an1),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Q[1]),
        .R(1'b0));
endmodule

module ram_block
   (vga_b,
    vga_g,
    vga_r,
    P,
    memory_block_reg_mux_sel_b_pos_0__1_0,
    n_0_410_BUFG,
    clk_IBUF_BUFG,
    Q);
  output vga_b;
  output vga_g;
  output vga_r;
  input [18:0]P;
  input [18:0]memory_block_reg_mux_sel_b_pos_0__1_0;
  input n_0_410_BUFG;
  input clk_IBUF_BUFG;
  input [1:0]Q;

  wire [18:0]P;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \main_vga_vram_buffer/memory_block_reg_0_0_cooolgate_en_sig_33 ;
  wire \main_vga_vram_buffer/memory_block_reg_10_0_cooolgate_en_sig_36 ;
  wire \main_vga_vram_buffer/memory_block_reg_12_0_cooolgate_en_sig_39 ;
  wire \main_vga_vram_buffer/memory_block_reg_14_0_cooolgate_en_sig_42 ;
  wire \main_vga_vram_buffer/memory_block_reg_2_0_cooolgate_en_sig_45 ;
  wire \main_vga_vram_buffer/memory_block_reg_4_0_cooolgate_en_sig_48 ;
  wire \main_vga_vram_buffer/memory_block_reg_6_0_cooolgate_en_sig_51 ;
  wire \main_vga_vram_buffer/memory_block_reg_8_0_cooolgate_en_sig_54 ;
  wire memory_block_reg_0_0_ENARDEN_cooolgate_en_sig_17;
  wire memory_block_reg_0_0_ENBWREN_cooolgate_en_sig_34;
  wire memory_block_reg_0_0_i_1_n_1;
  wire memory_block_reg_0_0_i_2_n_1;
  wire memory_block_reg_0_0_n_1;
  wire memory_block_reg_0_0_n_2;
  wire memory_block_reg_0_2_ENARDEN_cooolgate_en_sig_18;
  wire memory_block_reg_0_2_ENBWREN_cooolgate_en_sig_35;
  wire memory_block_reg_0_2_n_1;
  wire memory_block_reg_0_2_n_2;
  wire memory_block_reg_10_0_ENARDEN_cooolgate_en_sig_19;
  wire memory_block_reg_10_0_ENBWREN_cooolgate_en_sig_37;
  wire memory_block_reg_10_0_i_1_n_1;
  wire memory_block_reg_10_0_i_2_n_1;
  wire memory_block_reg_10_0_n_1;
  wire memory_block_reg_10_0_n_2;
  wire memory_block_reg_10_2_ENARDEN_cooolgate_en_sig_20;
  wire memory_block_reg_10_2_ENBWREN_cooolgate_en_sig_38;
  wire memory_block_reg_10_2_n_1;
  wire memory_block_reg_10_2_n_2;
  wire memory_block_reg_11_0_ENARDEN_cooolgate_en_sig_1;
  wire memory_block_reg_11_0_n_68;
  wire memory_block_reg_11_2_ENARDEN_cooolgate_en_sig_2;
  wire memory_block_reg_11_2_n_68;
  wire memory_block_reg_12_0_ENARDEN_cooolgate_en_sig_21;
  wire memory_block_reg_12_0_ENBWREN_cooolgate_en_sig_40;
  wire memory_block_reg_12_0_i_1_n_1;
  wire memory_block_reg_12_0_i_2_n_1;
  wire memory_block_reg_12_0_n_1;
  wire memory_block_reg_12_0_n_2;
  wire memory_block_reg_12_2_ENARDEN_cooolgate_en_sig_22;
  wire memory_block_reg_12_2_ENBWREN_cooolgate_en_sig_41;
  wire memory_block_reg_12_2_n_1;
  wire memory_block_reg_12_2_n_2;
  wire memory_block_reg_13_0_ENARDEN_cooolgate_en_sig_3;
  wire memory_block_reg_13_0_n_68;
  wire memory_block_reg_13_2_ENARDEN_cooolgate_en_sig_4;
  wire memory_block_reg_13_2_n_68;
  wire memory_block_reg_14_0_ENARDEN_cooolgate_en_sig_23;
  wire memory_block_reg_14_0_ENBWREN_cooolgate_en_sig_43;
  wire memory_block_reg_14_0_i_1_n_1;
  wire memory_block_reg_14_0_i_2_n_1;
  wire memory_block_reg_14_0_n_1;
  wire memory_block_reg_14_0_n_2;
  wire memory_block_reg_14_2_ENARDEN_cooolgate_en_sig_24;
  wire memory_block_reg_14_2_ENBWREN_cooolgate_en_sig_44;
  wire memory_block_reg_14_2_n_1;
  wire memory_block_reg_14_2_n_2;
  wire memory_block_reg_15_0_ENARDEN_cooolgate_en_sig_5;
  wire memory_block_reg_15_0_n_68;
  wire memory_block_reg_15_2_ENARDEN_cooolgate_en_sig_6;
  wire memory_block_reg_15_2_n_68;
  wire memory_block_reg_1_0_ENARDEN_cooolgate_en_sig_7;
  wire memory_block_reg_1_0_n_68;
  wire memory_block_reg_1_2_ENARDEN_cooolgate_en_sig_8;
  wire memory_block_reg_1_2_n_68;
  wire memory_block_reg_2_0_ENARDEN_cooolgate_en_sig_25;
  wire memory_block_reg_2_0_ENBWREN_cooolgate_en_sig_46;
  wire memory_block_reg_2_0_i_1_n_1;
  wire memory_block_reg_2_0_i_2_n_1;
  wire memory_block_reg_2_0_n_1;
  wire memory_block_reg_2_0_n_2;
  wire memory_block_reg_2_2_ENARDEN_cooolgate_en_sig_26;
  wire memory_block_reg_2_2_ENBWREN_cooolgate_en_sig_47;
  wire memory_block_reg_2_2_n_1;
  wire memory_block_reg_2_2_n_2;
  wire memory_block_reg_3_0_ENARDEN_cooolgate_en_sig_9;
  wire memory_block_reg_3_0_n_68;
  wire memory_block_reg_3_2_ENARDEN_cooolgate_en_sig_10;
  wire memory_block_reg_3_2_n_68;
  wire memory_block_reg_4_0_ENARDEN_cooolgate_en_sig_27;
  wire memory_block_reg_4_0_ENBWREN_cooolgate_en_sig_49;
  wire memory_block_reg_4_0_i_1_n_1;
  wire memory_block_reg_4_0_i_2_n_1;
  wire memory_block_reg_4_0_n_1;
  wire memory_block_reg_4_0_n_2;
  wire memory_block_reg_4_2_ENARDEN_cooolgate_en_sig_28;
  wire memory_block_reg_4_2_ENBWREN_cooolgate_en_sig_50;
  wire memory_block_reg_4_2_n_1;
  wire memory_block_reg_4_2_n_2;
  wire memory_block_reg_5_0_ENARDEN_cooolgate_en_sig_11;
  wire memory_block_reg_5_0_n_68;
  wire memory_block_reg_5_2_ENARDEN_cooolgate_en_sig_12;
  wire memory_block_reg_5_2_n_68;
  wire memory_block_reg_6_0_ENARDEN_cooolgate_en_sig_29;
  wire memory_block_reg_6_0_ENBWREN_cooolgate_en_sig_52;
  wire memory_block_reg_6_0_i_1_n_1;
  wire memory_block_reg_6_0_i_2_n_1;
  wire memory_block_reg_6_0_n_1;
  wire memory_block_reg_6_0_n_2;
  wire memory_block_reg_6_2_ENARDEN_cooolgate_en_sig_30;
  wire memory_block_reg_6_2_ENBWREN_cooolgate_en_sig_53;
  wire memory_block_reg_6_2_n_1;
  wire memory_block_reg_6_2_n_2;
  wire memory_block_reg_7_0_ENARDEN_cooolgate_en_sig_13;
  wire memory_block_reg_7_0_n_68;
  wire memory_block_reg_7_2_ENARDEN_cooolgate_en_sig_14;
  wire memory_block_reg_7_2_n_68;
  wire memory_block_reg_8_0_ENARDEN_cooolgate_en_sig_31;
  wire memory_block_reg_8_0_ENBWREN_cooolgate_en_sig_55;
  wire memory_block_reg_8_0_i_1_n_1;
  wire memory_block_reg_8_0_i_2_n_1;
  wire memory_block_reg_8_0_n_1;
  wire memory_block_reg_8_0_n_2;
  wire memory_block_reg_8_2_ENARDEN_cooolgate_en_sig_32;
  wire memory_block_reg_8_2_ENBWREN_cooolgate_en_sig_56;
  wire memory_block_reg_8_2_n_1;
  wire memory_block_reg_8_2_n_2;
  wire memory_block_reg_9_0_ENARDEN_cooolgate_en_sig_15;
  wire memory_block_reg_9_0_n_68;
  wire memory_block_reg_9_2_ENARDEN_cooolgate_en_sig_16;
  wire memory_block_reg_9_2_n_68;
  wire [18:0]memory_block_reg_mux_sel_b_pos_0__1_0;
  wire memory_block_reg_mux_sel_b_pos_0__1_n_1;
  wire memory_block_reg_mux_sel_b_pos_1__1_n_1;
  wire memory_block_reg_mux_sel_b_pos_2__1_n_1;
  wire n_0_410_BUFG;
  wire \vgaBlue_OBUF[3]_inst_i_3_n_1 ;
  wire \vgaBlue_OBUF[3]_inst_i_4_n_1 ;
  wire \vgaGreen_OBUF[3]_inst_i_3_n_1 ;
  wire \vgaGreen_OBUF[3]_inst_i_4_n_1 ;
  wire \vgaRed_OBUF[3]_inst_i_4_n_1 ;
  wire \vgaRed_OBUF[3]_inst_i_5_n_1 ;
  wire vga_b;
  wire vga_g;
  wire vga_r;
  wire NLW_memory_block_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_10_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_10_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_10_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_10_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_10_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_10_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_10_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_10_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_10_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_10_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_10_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_10_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_10_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_10_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_10_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_10_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_10_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_10_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_10_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_10_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_10_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_10_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_10_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_10_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_11_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_11_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_11_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_11_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_11_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_11_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_11_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_11_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_11_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_11_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_11_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_11_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_11_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_11_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_11_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_11_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_11_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_11_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_11_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_11_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_11_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_11_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_11_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_11_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_11_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_11_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_11_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_11_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_12_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_12_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_12_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_12_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_12_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_12_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_12_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_12_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_12_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_12_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_12_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_12_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_12_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_12_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_12_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_12_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_12_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_12_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_12_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_12_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_12_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_12_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_12_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_12_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_13_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_13_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_13_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_13_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_13_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_13_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_13_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_13_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_13_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_13_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_13_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_13_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_13_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_13_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_13_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_13_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_13_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_13_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_13_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_13_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_13_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_13_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_13_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_13_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_13_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_13_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_13_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_13_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_14_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_14_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_14_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_14_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_14_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_14_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_14_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_14_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_14_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_14_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_14_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_14_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_14_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_14_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_14_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_14_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_14_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_14_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_14_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_14_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_14_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_14_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_14_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_14_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_15_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_15_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_15_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_15_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_15_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_15_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_15_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_15_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_15_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_15_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_15_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_15_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_15_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_15_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_15_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_15_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_15_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_15_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_15_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_15_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_15_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_15_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_15_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_15_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_15_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_15_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_15_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_15_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_1_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_1_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_2_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_2_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_2_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_2_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_2_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_2_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_2_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_2_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_2_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_2_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_2_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_2_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_2_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_2_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_2_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_2_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_2_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_2_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_2_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_2_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_2_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_2_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_2_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_2_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_3_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_3_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_3_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_3_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_3_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_3_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_3_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_3_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_3_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_3_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_3_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_3_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_3_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_3_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_3_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_3_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_3_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_3_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_3_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_3_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_3_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_3_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_3_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_3_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_3_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_3_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_3_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_3_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_4_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_4_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_4_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_4_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_4_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_4_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_4_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_4_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_4_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_4_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_4_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_4_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_4_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_4_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_4_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_4_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_4_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_4_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_4_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_4_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_4_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_4_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_4_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_4_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_5_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_5_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_5_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_5_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_5_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_5_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_5_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_5_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_5_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_5_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_5_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_5_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_5_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_5_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_5_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_5_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_5_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_5_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_5_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_5_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_5_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_5_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_5_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_5_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_5_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_5_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_5_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_5_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_6_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_6_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_6_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_6_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_6_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_6_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_6_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_6_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_6_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_6_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_6_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_6_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_6_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_6_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_6_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_6_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_6_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_6_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_6_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_6_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_6_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_6_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_6_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_6_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_7_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_7_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_7_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_7_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_7_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_7_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_7_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_7_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_7_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_7_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_7_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_7_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_7_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_7_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_7_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_7_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_7_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_7_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_7_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_7_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_7_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_7_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_7_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_7_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_7_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_7_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_7_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_7_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_8_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_8_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_8_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_8_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_8_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_8_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_8_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_8_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_8_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_8_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_8_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_8_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_8_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_8_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_8_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_8_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_8_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_8_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_8_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_8_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_8_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_8_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_8_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_8_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_9_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_9_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_9_0_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_9_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_9_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_9_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_9_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_9_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_9_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_9_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_9_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_9_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_9_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_9_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_block_reg_9_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_block_reg_9_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_block_reg_9_2_DBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_9_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_9_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_block_reg_9_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_9_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_memory_block_reg_9_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_block_reg_9_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_memory_block_reg_9_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_9_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_block_reg_9_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_block_reg_9_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_block_reg_9_2_RDADDRECC_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_0_0_cooolgate_en_gate_65_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_0_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_0_0_cooolgate_en_sig_33 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_10_0_cooolgate_en_gate_70_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_10_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_10_0_cooolgate_en_sig_36 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_12_0_cooolgate_en_gate_75_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_12_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_12_0_cooolgate_en_sig_39 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_14_0_cooolgate_en_gate_80_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_14_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_14_0_cooolgate_en_sig_42 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_2_0_cooolgate_en_gate_85_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_2_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_2_0_cooolgate_en_sig_45 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_4_0_cooolgate_en_gate_90_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_4_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_4_0_cooolgate_en_sig_48 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_6_0_cooolgate_en_gate_95_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_6_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_6_0_cooolgate_en_sig_51 ));
  FDCE #(
    .INIT(1'b0)) 
    \main_vga_vram_buffer/memory_block_reg_8_0_cooolgate_en_gate_100_cooolDelFlop 
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(memory_block_reg_8_0_i_2_n_1),
        .Q(\main_vga_vram_buffer/memory_block_reg_8_0_cooolgate_en_sig_54 ));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_0_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_0_0_n_1),
        .CASCADEOUTB(memory_block_reg_0_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_0_0_ENARDEN_cooolgate_en_sig_17),
        .ENBWREN(memory_block_reg_0_0_ENBWREN_cooolgate_en_sig_34),
        .INJECTDBITERR(NLW_memory_block_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_0_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    memory_block_reg_0_0_ENARDEN_cooolgate_en_gate_33_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_0_0_ENARDEN_cooolgate_en_sig_17));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    memory_block_reg_0_0_ENBWREN_cooolgate_en_gate_66_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_0_0_cooolgate_en_sig_33 ),
        .O(memory_block_reg_0_0_ENBWREN_cooolgate_en_sig_34));
  LUT3 #(
    .INIT(8'h01)) 
    memory_block_reg_0_0_i_1
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .O(memory_block_reg_0_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    memory_block_reg_0_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .O(memory_block_reg_0_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_0_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_0_2_n_1),
        .CASCADEOUTB(memory_block_reg_0_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_0_2_ENARDEN_cooolgate_en_sig_18),
        .ENBWREN(memory_block_reg_0_2_ENBWREN_cooolgate_en_sig_35),
        .INJECTDBITERR(NLW_memory_block_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_0_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    memory_block_reg_0_2_ENARDEN_cooolgate_en_gate_35_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_0_2_ENARDEN_cooolgate_en_sig_18));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00010101)) 
    memory_block_reg_0_2_ENBWREN_cooolgate_en_gate_68_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_0_0_cooolgate_en_sig_33 ),
        .O(memory_block_reg_0_2_ENBWREN_cooolgate_en_sig_35));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_10_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "327680" *) 
  (* ram_addr_end = "360447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_10_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_10_0_n_1),
        .CASCADEOUTB(memory_block_reg_10_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_10_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_10_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_10_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_10_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_10_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_10_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_10_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_10_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_10_0_ENARDEN_cooolgate_en_sig_19),
        .ENBWREN(memory_block_reg_10_0_ENBWREN_cooolgate_en_sig_37),
        .INJECTDBITERR(NLW_memory_block_reg_10_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_10_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_10_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_10_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_10_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    memory_block_reg_10_0_ENARDEN_cooolgate_en_gate_37_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_10_0_ENARDEN_cooolgate_en_sig_19));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    memory_block_reg_10_0_ENBWREN_cooolgate_en_gate_71_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_10_0_cooolgate_en_sig_36 ),
        .O(memory_block_reg_10_0_ENBWREN_cooolgate_en_sig_37));
  LUT3 #(
    .INIT(8'h40)) 
    memory_block_reg_10_0_i_1
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .O(memory_block_reg_10_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h40)) 
    memory_block_reg_10_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .O(memory_block_reg_10_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_10_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "327680" *) 
  (* ram_addr_end = "360447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_10_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_10_2_n_1),
        .CASCADEOUTB(memory_block_reg_10_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_10_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_10_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_10_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_10_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_10_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_10_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_10_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_10_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_10_2_ENARDEN_cooolgate_en_sig_20),
        .ENBWREN(memory_block_reg_10_2_ENBWREN_cooolgate_en_sig_38),
        .INJECTDBITERR(NLW_memory_block_reg_10_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_10_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_10_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_10_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_10_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    memory_block_reg_10_2_ENARDEN_cooolgate_en_gate_39_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_10_2_ENARDEN_cooolgate_en_sig_20));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    memory_block_reg_10_2_ENBWREN_cooolgate_en_gate_73_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_10_0_cooolgate_en_sig_36 ),
        .O(memory_block_reg_10_2_ENBWREN_cooolgate_en_sig_38));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_11_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "360448" *) 
  (* ram_addr_end = "393215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_11_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_10_0_n_1),
        .CASCADEINB(memory_block_reg_10_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_11_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_11_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_11_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_11_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_11_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_11_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_11_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_11_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_11_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_11_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_11_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_11_0_ENARDEN_cooolgate_en_sig_1),
        .ENBWREN(memory_block_reg_10_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_11_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_11_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_11_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_11_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_10_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    memory_block_reg_11_0_ENARDEN_cooolgate_en_gate_1_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_11_0_ENARDEN_cooolgate_en_sig_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_11_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "360448" *) 
  (* ram_addr_end = "393215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_11_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_10_2_n_1),
        .CASCADEINB(memory_block_reg_10_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_11_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_11_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_11_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_11_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_11_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_11_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_11_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_11_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_11_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_11_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_11_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_11_2_ENARDEN_cooolgate_en_sig_2),
        .ENBWREN(memory_block_reg_10_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_11_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_11_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_11_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_11_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_10_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    memory_block_reg_11_2_ENARDEN_cooolgate_en_gate_3_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_11_2_ENARDEN_cooolgate_en_sig_2));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_12_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "393216" *) 
  (* ram_addr_end = "425983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_12_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_12_0_n_1),
        .CASCADEOUTB(memory_block_reg_12_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_12_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_12_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_12_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_12_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_12_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_12_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_12_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_12_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_12_0_ENARDEN_cooolgate_en_sig_21),
        .ENBWREN(memory_block_reg_12_0_ENBWREN_cooolgate_en_sig_40),
        .INJECTDBITERR(NLW_memory_block_reg_12_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_12_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_12_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_12_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_12_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    memory_block_reg_12_0_ENARDEN_cooolgate_en_gate_41_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_12_0_ENARDEN_cooolgate_en_sig_21));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    memory_block_reg_12_0_ENBWREN_cooolgate_en_gate_76_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_12_0_cooolgate_en_sig_39 ),
        .O(memory_block_reg_12_0_ENBWREN_cooolgate_en_sig_40));
  LUT3 #(
    .INIT(8'h40)) 
    memory_block_reg_12_0_i_1
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .O(memory_block_reg_12_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h40)) 
    memory_block_reg_12_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .O(memory_block_reg_12_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_12_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "393216" *) 
  (* ram_addr_end = "425983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_12_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_12_2_n_1),
        .CASCADEOUTB(memory_block_reg_12_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_12_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_12_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_12_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_12_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_12_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_12_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_12_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_12_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_12_2_ENARDEN_cooolgate_en_sig_22),
        .ENBWREN(memory_block_reg_12_2_ENBWREN_cooolgate_en_sig_41),
        .INJECTDBITERR(NLW_memory_block_reg_12_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_12_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_12_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_12_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_12_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    memory_block_reg_12_2_ENARDEN_cooolgate_en_gate_43_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_12_2_ENARDEN_cooolgate_en_sig_22));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    memory_block_reg_12_2_ENBWREN_cooolgate_en_gate_78_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_12_0_cooolgate_en_sig_39 ),
        .O(memory_block_reg_12_2_ENBWREN_cooolgate_en_sig_41));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_13_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "425984" *) 
  (* ram_addr_end = "458751" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_13_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_12_0_n_1),
        .CASCADEINB(memory_block_reg_12_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_13_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_13_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_13_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_13_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_13_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_13_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_13_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_13_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_13_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_13_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_13_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_13_0_ENARDEN_cooolgate_en_sig_3),
        .ENBWREN(memory_block_reg_12_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_13_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_13_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_13_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_13_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_12_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    memory_block_reg_13_0_ENARDEN_cooolgate_en_gate_5_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_13_0_ENARDEN_cooolgate_en_sig_3));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_13_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "425984" *) 
  (* ram_addr_end = "458751" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_13_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_12_2_n_1),
        .CASCADEINB(memory_block_reg_12_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_13_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_13_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_13_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_13_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_13_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_13_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_13_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_13_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_13_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_13_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_13_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_13_2_ENARDEN_cooolgate_en_sig_4),
        .ENBWREN(memory_block_reg_12_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_13_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_13_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_13_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_13_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_12_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    memory_block_reg_13_2_ENARDEN_cooolgate_en_gate_7_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_13_2_ENARDEN_cooolgate_en_sig_4));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_14_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "458752" *) 
  (* ram_addr_end = "491519" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_14_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_14_0_n_1),
        .CASCADEOUTB(memory_block_reg_14_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_14_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_14_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_14_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_14_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_14_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_14_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_14_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_14_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_14_0_ENARDEN_cooolgate_en_sig_23),
        .ENBWREN(memory_block_reg_14_0_ENBWREN_cooolgate_en_sig_43),
        .INJECTDBITERR(NLW_memory_block_reg_14_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_14_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_14_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_14_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_14_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    memory_block_reg_14_0_ENARDEN_cooolgate_en_gate_45_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_14_0_ENARDEN_cooolgate_en_sig_23));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00808080)) 
    memory_block_reg_14_0_ENBWREN_cooolgate_en_gate_81_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_14_0_cooolgate_en_sig_42 ),
        .O(memory_block_reg_14_0_ENBWREN_cooolgate_en_sig_43));
  LUT3 #(
    .INIT(8'h80)) 
    memory_block_reg_14_0_i_1
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .O(memory_block_reg_14_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h80)) 
    memory_block_reg_14_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .O(memory_block_reg_14_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_14_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "458752" *) 
  (* ram_addr_end = "491519" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_14_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_14_2_n_1),
        .CASCADEOUTB(memory_block_reg_14_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_14_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_14_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_14_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_14_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_14_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_14_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_14_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_14_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_14_2_ENARDEN_cooolgate_en_sig_24),
        .ENBWREN(memory_block_reg_14_2_ENBWREN_cooolgate_en_sig_44),
        .INJECTDBITERR(NLW_memory_block_reg_14_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_14_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_14_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_14_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_14_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    memory_block_reg_14_2_ENARDEN_cooolgate_en_gate_47_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_14_2_ENARDEN_cooolgate_en_sig_24));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00808080)) 
    memory_block_reg_14_2_ENBWREN_cooolgate_en_gate_83_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_14_0_cooolgate_en_sig_42 ),
        .O(memory_block_reg_14_2_ENBWREN_cooolgate_en_sig_44));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_15_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "491520" *) 
  (* ram_addr_end = "524287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_15_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_14_0_n_1),
        .CASCADEINB(memory_block_reg_14_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_15_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_15_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_15_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_15_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_15_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_15_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_15_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_15_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_15_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_15_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_15_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_15_0_ENARDEN_cooolgate_en_sig_5),
        .ENBWREN(memory_block_reg_14_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_15_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_15_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_15_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_15_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_14_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    memory_block_reg_15_0_ENARDEN_cooolgate_en_gate_9_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_15_0_ENARDEN_cooolgate_en_sig_5));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_15_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "491520" *) 
  (* ram_addr_end = "524287" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_15_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_14_2_n_1),
        .CASCADEINB(memory_block_reg_14_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_15_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_15_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_15_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_15_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_15_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_15_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_15_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_15_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_15_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_15_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_15_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_15_2_ENARDEN_cooolgate_en_sig_6),
        .ENBWREN(memory_block_reg_14_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_15_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_15_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_15_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_15_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_14_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    memory_block_reg_15_2_ENARDEN_cooolgate_en_gate_11_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_15_2_ENARDEN_cooolgate_en_sig_6));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_1_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_0_0_n_1),
        .CASCADEINB(memory_block_reg_0_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_1_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_1_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_1_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_1_0_ENARDEN_cooolgate_en_sig_7),
        .ENBWREN(memory_block_reg_0_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_0_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    memory_block_reg_1_0_ENARDEN_cooolgate_en_gate_13_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_1_0_ENARDEN_cooolgate_en_sig_7));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_1_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_1_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_0_2_n_1),
        .CASCADEINB(memory_block_reg_0_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_1_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_1_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_1_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_1_2_ENARDEN_cooolgate_en_sig_8),
        .ENBWREN(memory_block_reg_0_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_0_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    memory_block_reg_1_2_ENARDEN_cooolgate_en_gate_15_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_1_2_ENARDEN_cooolgate_en_sig_8));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_2_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_2_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_2_0_n_1),
        .CASCADEOUTB(memory_block_reg_2_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_2_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_2_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_2_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_2_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_2_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_2_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_2_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_2_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_2_0_ENARDEN_cooolgate_en_sig_25),
        .ENBWREN(memory_block_reg_2_0_ENBWREN_cooolgate_en_sig_46),
        .INJECTDBITERR(NLW_memory_block_reg_2_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_2_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_2_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_2_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_2_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    memory_block_reg_2_0_ENARDEN_cooolgate_en_gate_49_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_2_0_ENARDEN_cooolgate_en_sig_25));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    memory_block_reg_2_0_ENBWREN_cooolgate_en_gate_86_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_2_0_cooolgate_en_sig_45 ),
        .O(memory_block_reg_2_0_ENBWREN_cooolgate_en_sig_46));
  LUT3 #(
    .INIT(8'h02)) 
    memory_block_reg_2_0_i_1
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .O(memory_block_reg_2_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h02)) 
    memory_block_reg_2_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .O(memory_block_reg_2_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_2_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_2_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_2_2_n_1),
        .CASCADEOUTB(memory_block_reg_2_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_2_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_2_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_2_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_2_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_2_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_2_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_2_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_2_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_2_2_ENARDEN_cooolgate_en_sig_26),
        .ENBWREN(memory_block_reg_2_2_ENBWREN_cooolgate_en_sig_47),
        .INJECTDBITERR(NLW_memory_block_reg_2_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_2_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_2_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_2_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_2_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    memory_block_reg_2_2_ENARDEN_cooolgate_en_gate_51_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_2_2_ENARDEN_cooolgate_en_sig_26));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    memory_block_reg_2_2_ENBWREN_cooolgate_en_gate_88_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_2_0_cooolgate_en_sig_45 ),
        .O(memory_block_reg_2_2_ENBWREN_cooolgate_en_sig_47));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_3_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_3_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_2_0_n_1),
        .CASCADEINB(memory_block_reg_2_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_3_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_3_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_3_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_3_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_3_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_3_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_3_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_3_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_3_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_3_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_3_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_3_0_ENARDEN_cooolgate_en_sig_9),
        .ENBWREN(memory_block_reg_2_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_3_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_3_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_3_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_3_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_2_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    memory_block_reg_3_0_ENARDEN_cooolgate_en_gate_17_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_3_0_ENARDEN_cooolgate_en_sig_9));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_3_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_3_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_2_2_n_1),
        .CASCADEINB(memory_block_reg_2_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_3_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_3_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_3_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_3_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_3_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_3_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_3_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_3_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_3_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_3_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_3_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_3_2_ENARDEN_cooolgate_en_sig_10),
        .ENBWREN(memory_block_reg_2_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_3_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_3_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_3_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_3_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_2_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    memory_block_reg_3_2_ENARDEN_cooolgate_en_gate_19_LOPT_REMAP
       (.I0(P[16]),
        .I1(P[17]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_3_2_ENARDEN_cooolgate_en_sig_10));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_4_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "131072" *) 
  (* ram_addr_end = "163839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_4_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_4_0_n_1),
        .CASCADEOUTB(memory_block_reg_4_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_4_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_4_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_4_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_4_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_4_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_4_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_4_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_4_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_4_0_ENARDEN_cooolgate_en_sig_27),
        .ENBWREN(memory_block_reg_4_0_ENBWREN_cooolgate_en_sig_49),
        .INJECTDBITERR(NLW_memory_block_reg_4_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_4_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_4_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_4_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_4_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    memory_block_reg_4_0_ENARDEN_cooolgate_en_gate_53_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_4_0_ENARDEN_cooolgate_en_sig_27));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    memory_block_reg_4_0_ENBWREN_cooolgate_en_gate_91_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_4_0_cooolgate_en_sig_48 ),
        .O(memory_block_reg_4_0_ENBWREN_cooolgate_en_sig_49));
  LUT3 #(
    .INIT(8'h02)) 
    memory_block_reg_4_0_i_1
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .O(memory_block_reg_4_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h02)) 
    memory_block_reg_4_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .O(memory_block_reg_4_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_4_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "131072" *) 
  (* ram_addr_end = "163839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_4_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_4_2_n_1),
        .CASCADEOUTB(memory_block_reg_4_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_4_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_4_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_4_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_4_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_4_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_4_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_4_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_4_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_4_2_ENARDEN_cooolgate_en_sig_28),
        .ENBWREN(memory_block_reg_4_2_ENBWREN_cooolgate_en_sig_50),
        .INJECTDBITERR(NLW_memory_block_reg_4_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_4_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_4_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_4_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_4_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    memory_block_reg_4_2_ENARDEN_cooolgate_en_gate_55_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_4_2_ENARDEN_cooolgate_en_sig_28));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    memory_block_reg_4_2_ENBWREN_cooolgate_en_gate_93_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_4_0_cooolgate_en_sig_48 ),
        .O(memory_block_reg_4_2_ENBWREN_cooolgate_en_sig_50));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_5_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "163840" *) 
  (* ram_addr_end = "196607" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_5_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_4_0_n_1),
        .CASCADEINB(memory_block_reg_4_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_5_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_5_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_5_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_5_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_5_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_5_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_5_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_5_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_5_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_5_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_5_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_5_0_ENARDEN_cooolgate_en_sig_11),
        .ENBWREN(memory_block_reg_4_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_5_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_5_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_5_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_5_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_4_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    memory_block_reg_5_0_ENARDEN_cooolgate_en_gate_21_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_5_0_ENARDEN_cooolgate_en_sig_11));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_5_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "163840" *) 
  (* ram_addr_end = "196607" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_5_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_4_2_n_1),
        .CASCADEINB(memory_block_reg_4_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_5_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_5_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_5_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_5_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_5_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_5_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_5_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_5_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_5_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_5_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_5_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_5_2_ENARDEN_cooolgate_en_sig_12),
        .ENBWREN(memory_block_reg_4_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_5_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_5_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_5_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_5_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_4_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    memory_block_reg_5_2_ENARDEN_cooolgate_en_gate_23_LOPT_REMAP
       (.I0(P[17]),
        .I1(P[16]),
        .I2(P[18]),
        .I3(P[15]),
        .O(memory_block_reg_5_2_ENARDEN_cooolgate_en_sig_12));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_6_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "196608" *) 
  (* ram_addr_end = "229375" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_6_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_6_0_n_1),
        .CASCADEOUTB(memory_block_reg_6_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_6_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_6_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_6_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_6_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_6_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_6_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_6_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_6_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_6_0_ENARDEN_cooolgate_en_sig_29),
        .ENBWREN(memory_block_reg_6_0_ENBWREN_cooolgate_en_sig_52),
        .INJECTDBITERR(NLW_memory_block_reg_6_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_6_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_6_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_6_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_6_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    memory_block_reg_6_0_ENARDEN_cooolgate_en_gate_57_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_6_0_ENARDEN_cooolgate_en_sig_29));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    memory_block_reg_6_0_ENBWREN_cooolgate_en_gate_96_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_6_0_cooolgate_en_sig_51 ),
        .O(memory_block_reg_6_0_ENBWREN_cooolgate_en_sig_52));
  LUT3 #(
    .INIT(8'h40)) 
    memory_block_reg_6_0_i_1
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .O(memory_block_reg_6_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h40)) 
    memory_block_reg_6_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .O(memory_block_reg_6_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_6_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "196608" *) 
  (* ram_addr_end = "229375" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_6_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_6_2_n_1),
        .CASCADEOUTB(memory_block_reg_6_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_6_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_6_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_6_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_6_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_6_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_6_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_6_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_6_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_6_2_ENARDEN_cooolgate_en_sig_30),
        .ENBWREN(memory_block_reg_6_2_ENBWREN_cooolgate_en_sig_53),
        .INJECTDBITERR(NLW_memory_block_reg_6_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_6_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_6_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_6_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_6_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    memory_block_reg_6_2_ENARDEN_cooolgate_en_gate_59_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_6_2_ENARDEN_cooolgate_en_sig_30));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    memory_block_reg_6_2_ENBWREN_cooolgate_en_gate_98_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_6_0_cooolgate_en_sig_51 ),
        .O(memory_block_reg_6_2_ENBWREN_cooolgate_en_sig_53));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_7_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "229376" *) 
  (* ram_addr_end = "262143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_7_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_6_0_n_1),
        .CASCADEINB(memory_block_reg_6_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_7_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_7_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_7_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_7_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_7_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_7_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_7_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_7_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_7_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_7_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_7_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_7_0_ENARDEN_cooolgate_en_sig_13),
        .ENBWREN(memory_block_reg_6_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_7_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_7_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_7_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_7_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_6_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    memory_block_reg_7_0_ENARDEN_cooolgate_en_gate_25_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_7_0_ENARDEN_cooolgate_en_sig_13));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_7_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "229376" *) 
  (* ram_addr_end = "262143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_7_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_6_2_n_1),
        .CASCADEINB(memory_block_reg_6_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_7_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_7_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_7_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_7_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_7_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_7_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_7_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_7_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_7_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_7_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_7_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_7_2_ENARDEN_cooolgate_en_sig_14),
        .ENBWREN(memory_block_reg_6_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_7_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_7_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_7_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_7_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_6_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    memory_block_reg_7_2_ENARDEN_cooolgate_en_gate_27_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_7_2_ENARDEN_cooolgate_en_sig_14));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_8_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "262144" *) 
  (* ram_addr_end = "294911" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_8_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_8_0_n_1),
        .CASCADEOUTB(memory_block_reg_8_0_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_8_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_8_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_8_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_8_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_8_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_8_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_8_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_8_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_8_0_ENARDEN_cooolgate_en_sig_31),
        .ENBWREN(memory_block_reg_8_0_ENBWREN_cooolgate_en_sig_55),
        .INJECTDBITERR(NLW_memory_block_reg_8_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_8_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_8_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_8_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_8_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    memory_block_reg_8_0_ENARDEN_cooolgate_en_gate_61_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_8_0_ENARDEN_cooolgate_en_sig_31));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    memory_block_reg_8_0_ENBWREN_cooolgate_en_gate_101_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_8_0_cooolgate_en_sig_54 ),
        .O(memory_block_reg_8_0_ENBWREN_cooolgate_en_sig_55));
  LUT3 #(
    .INIT(8'h02)) 
    memory_block_reg_8_0_i_1
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .O(memory_block_reg_8_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h02)) 
    memory_block_reg_8_0_i_2
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .O(memory_block_reg_8_0_i_2_n_1));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_8_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "262144" *) 
  (* ram_addr_end = "294911" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_8_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(memory_block_reg_8_2_n_1),
        .CASCADEOUTB(memory_block_reg_8_2_n_2),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_8_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_8_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_8_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_8_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_memory_block_reg_8_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_memory_block_reg_8_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_8_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_8_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_8_2_ENARDEN_cooolgate_en_sig_32),
        .ENBWREN(memory_block_reg_8_2_ENBWREN_cooolgate_en_sig_56),
        .INJECTDBITERR(NLW_memory_block_reg_8_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_8_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_8_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_8_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_8_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    memory_block_reg_8_2_ENARDEN_cooolgate_en_gate_63_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_8_2_ENARDEN_cooolgate_en_sig_32));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    memory_block_reg_8_2_ENBWREN_cooolgate_en_gate_103_LOPT_REMAP
       (.I0(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .I1(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .I2(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .I3(memory_block_reg_mux_sel_b_pos_0__1_0[15]),
        .I4(\main_vga_vram_buffer/memory_block_reg_8_0_cooolgate_en_sig_54 ),
        .O(memory_block_reg_8_2_ENBWREN_cooolgate_en_sig_56));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_9_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "294912" *) 
  (* ram_addr_end = "327679" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_9_0
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_8_0_n_1),
        .CASCADEINB(memory_block_reg_8_0_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_9_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_9_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_9_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_9_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_9_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_9_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_9_0_DOBDO_UNCONNECTED[31:1],memory_block_reg_9_0_n_68}),
        .DOPADOP(NLW_memory_block_reg_9_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_9_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_9_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_9_0_ENARDEN_cooolgate_en_sig_15),
        .ENBWREN(memory_block_reg_8_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_9_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_9_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_9_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_9_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_8_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    memory_block_reg_9_0_ENARDEN_cooolgate_en_gate_29_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_9_0_ENARDEN_cooolgate_en_sig_15));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* PWROPT_WRITE_MODE_CHANGE_A = "READ_FIRST:NO_CHANGE_2" *) 
  (* RTL_RAM_BITS = "1572864" *) 
  (* RTL_RAM_NAME = "main_vga_vram_buffer/memory_block_reg_9_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "294912" *) 
  (* ram_addr_end = "327679" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    memory_block_reg_9_2
       (.ADDRARDADDR(P[15:0]),
        .ADDRBWRADDR(memory_block_reg_mux_sel_b_pos_0__1_0[15:0]),
        .CASCADEINA(memory_block_reg_8_2_n_1),
        .CASCADEINB(memory_block_reg_8_2_n_2),
        .CASCADEOUTA(NLW_memory_block_reg_9_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_block_reg_9_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(n_0_410_BUFG),
        .DBITERR(NLW_memory_block_reg_9_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_9_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_memory_block_reg_9_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_memory_block_reg_9_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_block_reg_9_2_DOBDO_UNCONNECTED[31:1],memory_block_reg_9_2_n_68}),
        .DOPADOP(NLW_memory_block_reg_9_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_block_reg_9_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_block_reg_9_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(memory_block_reg_9_2_ENARDEN_cooolgate_en_sig_16),
        .ENBWREN(memory_block_reg_8_0_i_2_n_1),
        .INJECTDBITERR(NLW_memory_block_reg_9_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_block_reg_9_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_block_reg_9_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_block_reg_9_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,memory_block_reg_8_0_i_1_n_1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    memory_block_reg_9_2_ENARDEN_cooolgate_en_gate_31_LOPT_REMAP
       (.I0(P[18]),
        .I1(P[16]),
        .I2(P[17]),
        .I3(P[15]),
        .O(memory_block_reg_9_2_ENARDEN_cooolgate_en_sig_16));
  FDRE #(
    .INIT(1'b0)) 
    memory_block_reg_mux_sel_b_pos_0__1
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .D(memory_block_reg_mux_sel_b_pos_0__1_0[18]),
        .Q(memory_block_reg_mux_sel_b_pos_0__1_n_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_block_reg_mux_sel_b_pos_1__1
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .D(memory_block_reg_mux_sel_b_pos_0__1_0[17]),
        .Q(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    memory_block_reg_mux_sel_b_pos_2__1
       (.C(n_0_410_BUFG),
        .CE(1'b1),
        .D(memory_block_reg_mux_sel_b_pos_0__1_0[16]),
        .Q(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .R(1'b0));
  MUXF7 \vgaBlue_OBUF[3]_inst_i_2 
       (.I0(\vgaBlue_OBUF[3]_inst_i_3_n_1 ),
        .I1(\vgaBlue_OBUF[3]_inst_i_4_n_1 ),
        .O(vga_b),
        .S(memory_block_reg_mux_sel_b_pos_0__1_n_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vgaBlue_OBUF[3]_inst_i_3 
       (.I0(memory_block_reg_7_0_n_68),
        .I1(memory_block_reg_5_0_n_68),
        .I2(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .I3(memory_block_reg_3_0_n_68),
        .I4(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .I5(memory_block_reg_1_0_n_68),
        .O(\vgaBlue_OBUF[3]_inst_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vgaBlue_OBUF[3]_inst_i_4 
       (.I0(memory_block_reg_15_0_n_68),
        .I1(memory_block_reg_13_0_n_68),
        .I2(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .I3(memory_block_reg_11_0_n_68),
        .I4(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .I5(memory_block_reg_9_0_n_68),
        .O(\vgaBlue_OBUF[3]_inst_i_4_n_1 ));
  MUXF7 \vgaGreen_OBUF[3]_inst_i_2 
       (.I0(\vgaGreen_OBUF[3]_inst_i_3_n_1 ),
        .I1(\vgaGreen_OBUF[3]_inst_i_4_n_1 ),
        .O(vga_g),
        .S(memory_block_reg_mux_sel_b_pos_0__1_n_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vgaGreen_OBUF[3]_inst_i_3 
       (.I0(memory_block_reg_7_0_n_68),
        .I1(memory_block_reg_5_0_n_68),
        .I2(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .I3(memory_block_reg_3_0_n_68),
        .I4(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .I5(memory_block_reg_1_0_n_68),
        .O(\vgaGreen_OBUF[3]_inst_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vgaGreen_OBUF[3]_inst_i_4 
       (.I0(memory_block_reg_15_0_n_68),
        .I1(memory_block_reg_13_0_n_68),
        .I2(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .I3(memory_block_reg_11_0_n_68),
        .I4(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .I5(memory_block_reg_9_0_n_68),
        .O(\vgaGreen_OBUF[3]_inst_i_4_n_1 ));
  MUXF7 \vgaRed_OBUF[3]_inst_i_2 
       (.I0(\vgaRed_OBUF[3]_inst_i_4_n_1 ),
        .I1(\vgaRed_OBUF[3]_inst_i_5_n_1 ),
        .O(vga_r),
        .S(memory_block_reg_mux_sel_b_pos_0__1_n_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vgaRed_OBUF[3]_inst_i_4 
       (.I0(memory_block_reg_7_2_n_68),
        .I1(memory_block_reg_5_2_n_68),
        .I2(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .I3(memory_block_reg_3_2_n_68),
        .I4(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .I5(memory_block_reg_1_2_n_68),
        .O(\vgaRed_OBUF[3]_inst_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vgaRed_OBUF[3]_inst_i_5 
       (.I0(memory_block_reg_15_2_n_68),
        .I1(memory_block_reg_13_2_n_68),
        .I2(memory_block_reg_mux_sel_b_pos_1__1_n_1),
        .I3(memory_block_reg_11_2_n_68),
        .I4(memory_block_reg_mux_sel_b_pos_2__1_n_1),
        .I5(memory_block_reg_9_2_n_68),
        .O(\vgaRed_OBUF[3]_inst_i_5_n_1 ));
endmodule

module switch_button
   (AR,
    btnC_IBUF,
    clk_IBUF_BUFG);
  output [0:0]AR;
  input btnC_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]AR;
  wire btnC_IBUF;
  wire clk_IBUF_BUFG;
  wire tmp1;
  wire tmp2;

  debouncer_15 \genblk1[0].the_debouncer 
       (.AR(AR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .tmp2(tmp2));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btnC_IBUF),
        .Q(tmp1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1),
        .Q(tmp2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "switch_button" *) 
module switch_button__parameterized0
   (led_OBUF,
    clk_IBUF_BUFG,
    D);
  output [15:0]led_OBUF;
  input clk_IBUF_BUFG;
  input [15:0]D;

  wire [15:0]D;
  wire btn_in;
  wire clk_IBUF_BUFG;
  wire [15:0]led_OBUF;
  wire [15:0]tmp1;
  wire \tmp2_reg_n_1_[0] ;
  wire \tmp2_reg_n_1_[10] ;
  wire \tmp2_reg_n_1_[11] ;
  wire \tmp2_reg_n_1_[12] ;
  wire \tmp2_reg_n_1_[13] ;
  wire \tmp2_reg_n_1_[14] ;
  wire \tmp2_reg_n_1_[15] ;
  wire \tmp2_reg_n_1_[2] ;
  wire \tmp2_reg_n_1_[3] ;
  wire \tmp2_reg_n_1_[4] ;
  wire \tmp2_reg_n_1_[5] ;
  wire \tmp2_reg_n_1_[6] ;
  wire \tmp2_reg_n_1_[7] ;
  wire \tmp2_reg_n_1_[8] ;
  wire \tmp2_reg_n_1_[9] ;

  debouncer \genblk1[0].the_debouncer 
       (.Q(\tmp2_reg_n_1_[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[0]));
  debouncer_0 \genblk1[10].the_debouncer 
       (.Q(\tmp2_reg_n_1_[10] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[10]));
  debouncer_1 \genblk1[11].the_debouncer 
       (.Q(\tmp2_reg_n_1_[11] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[11]));
  debouncer_2 \genblk1[12].the_debouncer 
       (.Q(\tmp2_reg_n_1_[12] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[12]));
  debouncer_3 \genblk1[13].the_debouncer 
       (.Q(\tmp2_reg_n_1_[13] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[13]));
  debouncer_4 \genblk1[14].the_debouncer 
       (.Q(\tmp2_reg_n_1_[14] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[14]));
  debouncer_5 \genblk1[15].the_debouncer 
       (.Q(\tmp2_reg_n_1_[15] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[15]));
  debouncer_6 \genblk1[1].the_debouncer 
       (.Q(btn_in),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[1]));
  debouncer_7 \genblk1[2].the_debouncer 
       (.Q(\tmp2_reg_n_1_[2] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[2]));
  debouncer_8 \genblk1[3].the_debouncer 
       (.Q(\tmp2_reg_n_1_[3] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[3]));
  debouncer_9 \genblk1[4].the_debouncer 
       (.Q(\tmp2_reg_n_1_[4] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[4]));
  debouncer_10 \genblk1[5].the_debouncer 
       (.Q(\tmp2_reg_n_1_[5] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[5]));
  debouncer_11 \genblk1[6].the_debouncer 
       (.Q(\tmp2_reg_n_1_[6] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[6]));
  debouncer_12 \genblk1[7].the_debouncer 
       (.Q(\tmp2_reg_n_1_[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[7]));
  debouncer_13 \genblk1[8].the_debouncer 
       (.Q(\tmp2_reg_n_1_[8] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[8]));
  debouncer_14 \genblk1[9].the_debouncer 
       (.Q(\tmp2_reg_n_1_[9] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(tmp1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(tmp1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(tmp1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(tmp1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(tmp1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(tmp1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(tmp1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(tmp1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(tmp1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(tmp1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(tmp1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(tmp1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(tmp1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(tmp1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(tmp1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(tmp1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[0]),
        .Q(\tmp2_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[10]),
        .Q(\tmp2_reg_n_1_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[11]),
        .Q(\tmp2_reg_n_1_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[12]),
        .Q(\tmp2_reg_n_1_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[13]),
        .Q(\tmp2_reg_n_1_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[14]),
        .Q(\tmp2_reg_n_1_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[15]),
        .Q(\tmp2_reg_n_1_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[1]),
        .Q(btn_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[2]),
        .Q(\tmp2_reg_n_1_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[3]),
        .Q(\tmp2_reg_n_1_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[4]),
        .Q(\tmp2_reg_n_1_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[5]),
        .Q(\tmp2_reg_n_1_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[6]),
        .Q(\tmp2_reg_n_1_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[7]),
        .Q(\tmp2_reg_n_1_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[8]),
        .Q(\tmp2_reg_n_1_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tmp1[9]),
        .Q(\tmp2_reg_n_1_[9] ),
        .R(1'b0));
endmodule

module text_renderer
   (\gpu_px_reg[3] ,
    Q,
    clk_IBUF_BUFG,
    ADDRARDADDR,
    \pixel_data_reg[1]_0 ,
    D);
  output \gpu_px_reg[3] ;
  output [1:0]Q;
  input clk_IBUF_BUFG;
  input [10:0]ADDRARDADDR;
  input [2:0]\pixel_data_reg[1]_0 ;
  input [1:0]D;

  wire [10:0]ADDRARDADDR;
  wire [1:0]D;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \gpu_px_reg[3] ;
  wire [2:0]\pixel_data_reg[1]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  ascii_text_generator text_generator
       (.ADDRARDADDR(ADDRARDADDR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\gpu_px_reg[3] (\gpu_px_reg[3] ),
        .\pixel_data_reg[1] (\pixel_data_reg[1]_0 ));
endmodule

(* BASE_CORE_CLOCK = "100000000" *) (* COLOR3BLACK = "3'b000" *) (* COLOR3BLUE = "3'b001" *) 
(* COLOR3CYAN = "3'b011" *) (* COLOR3GREEN = "3'b010" *) (* COLOR3MAGENTA = "3'b101" *) 
(* COLOR3RED = "3'b100" *) (* COLOR3WHITE = "3'b111" *) (* COLOR3YELLOW = "3'b110" *) 
(* ECO_CHECKSUM = "942b1f1a" *) (* GPU_COLOR_BITS = "3" *) (* GPU_COLOR_DEPTH = "1" *) 
(* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* RF_SCORE = "4'b1111" *) (* VGA_COLOR_DEPTH = "4" *) (* VGA_PIXEL_COUNT = "307200" *) 
(* VGA_RES_HEIGHT = "480" *) (* VGA_RES_WIDTH = "640" *) (* VGA_VRAM_ADDR_BITS = "19" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_vpong
   (Hsync,
    Vsync,
    vgaRed,
    vgaGreen,
    vgaBlue,
    seg,
    dp,
    an,
    led,
    RsTx,
    RsRx,
    sw,
    btnC,
    clk);
  output Hsync;
  output Vsync;
  output [3:0]vgaRed;
  output [3:0]vgaGreen;
  output [3:0]vgaBlue;
  output [6:0]seg;
  output dp;
  output [3:0]an;
  output [15:0]led;
  output RsTx;
  input RsRx;
  input [15:0]sw;
  input btnC;
  input clk;

  wire Hsync;
  wire Hsync_OBUF;
  wire RsRx;
  wire RsRx_IBUF;
  wire RsTx;
  wire RsTx_OBUF;
  wire Vsync;
  wire Vsync_OBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire baud;
  wire baud_BUFG;
  wire btnC;
  wire btnC_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_disp;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire dp;
  wire en_write_uart;
  wire [3:1]gpu_pos_x;
  wire [4:1]gpu_pos_y;
  wire graphics_renderer_inst_n_14;
  wire graphics_renderer_inst_n_35;
  wire graphics_renderer_inst_n_36;
  wire has_new_data;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire main_display_n_2;
  wire main_vga_sync_n_14;
  wire main_vga_sync_n_15;
  wire main_vga_sync_n_16;
  wire main_vga_sync_n_17;
  wire main_vga_sync_n_18;
  wire main_vga_sync_n_19;
  wire main_vga_sync_n_20;
  wire main_vga_sync_n_21;
  wire main_vga_sync_n_22;
  wire main_vga_sync_n_23;
  wire n_0_410_BUFG;
  wire n_0_410_BUFG_inst_n_1;
  wire [9:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire p_1_in;
  wire [18:0]ra;
  wire received;
  wire received_old;
  wire [6:0]rom_text_line;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire [15:0]sw_IBUF;
  wire text_renderer_inst_n_1;
  wire [7:0]uart_data_rx;
  wire \uart_data_tx_reg_n_1_[0] ;
  wire [3:0]vgaBlue;
  wire [0:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen;
  wire [0:0]vgaGreen_OBUF;
  wire [3:0]vgaRed;
  wire [0:0]vgaRed_OBUF;
  wire vga_b;
  wire vga_g;
  wire [9:0]vga_pos_x;
  wire vga_r;
  wire vga_rst;
  wire [2:1]vram_data_in;
  wire [18:0]wa;
  wire NLW_vram_ra_CARRYCASCOUT_UNCONNECTED;
  wire NLW_vram_ra_MULTSIGNOUT_UNCONNECTED;
  wire NLW_vram_ra_OVERFLOW_UNCONNECTED;
  wire NLW_vram_ra_PATTERNBDETECT_UNCONNECTED;
  wire NLW_vram_ra_PATTERNDETECT_UNCONNECTED;
  wire NLW_vram_ra_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_vram_ra_ACOUT_UNCONNECTED;
  wire [17:0]NLW_vram_ra_BCOUT_UNCONNECTED;
  wire [3:0]NLW_vram_ra_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_vram_ra_P_UNCONNECTED;
  wire [47:0]NLW_vram_ra_PCOUT_UNCONNECTED;
  wire NLW_vram_wa_CARRYCASCOUT_UNCONNECTED;
  wire NLW_vram_wa_MULTSIGNOUT_UNCONNECTED;
  wire NLW_vram_wa_OVERFLOW_UNCONNECTED;
  wire NLW_vram_wa_PATTERNBDETECT_UNCONNECTED;
  wire NLW_vram_wa_PATTERNDETECT_UNCONNECTED;
  wire NLW_vram_wa_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_vram_wa_ACOUT_UNCONNECTED;
  wire [17:0]NLW_vram_wa_BCOUT_UNCONNECTED;
  wire [3:0]NLW_vram_wa_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_vram_wa_P_UNCONNECTED;
  wire [47:0]NLW_vram_wa_PCOUT_UNCONNECTED;

  OBUF Hsync_OBUF_inst
       (.I(Hsync_OBUF),
        .O(Hsync));
  IBUF RsRx_IBUF_inst
       (.I(RsRx),
        .O(RsRx_IBUF));
  OBUF RsTx_OBUF_inst
       (.I(RsTx_OBUF),
        .O(RsTx));
  OBUF Vsync_OBUF_inst
       (.I(Vsync_OBUF),
        .O(Vsync));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  BUFG baud_BUFG_inst
       (.I(baud),
        .O(baud_BUFG));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  switch_button btn_vga_rst
       (.AR(vga_rst),
        .btnC_IBUF(btnC_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  clk_div clk_disp_div
       (.CLK(clk_disp),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  FDRE #(
    .INIT(1'b0)) 
    en_write_uart_reg
       (.C(baud_BUFG),
        .CE(1'b1),
        .D(has_new_data),
        .Q(en_write_uart),
        .R(1'b0));
  graphics_renderer graphics_renderer_inst
       (.A(p_0_in__0),
        .ADDRARDADDR(rom_text_line),
        .C(p_0_in),
        .D({graphics_renderer_inst_n_35,graphics_renderer_inst_n_36}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\gpu_px_reg[3]_0 (gpu_pos_x),
        .\gpu_px_reg[9]_0 (graphics_renderer_inst_n_14),
        .\gpu_py_reg[4]_0 (gpu_pos_y),
        .\pixel_data_reg[1] (text_renderer_inst_n_1));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  quad_7_seg main_display
       (.CLK(clk_disp),
        .Q({p_1_in,main_display_n_2}),
        .an_OBUF(an_OBUF));
  baudrate_generator main_uart_baudrate_generator
       (.baud(baud),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  vga_sync main_vga_sync
       (.AR(vga_rst),
        .Hsync_OBUF(Hsync_OBUF),
        .Q(vga_pos_x),
        .Vsync_OBUF(Vsync_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .n_0_410_BUFG(n_0_410_BUFG),
        .n_0_410_BUFG_inst_n_1(n_0_410_BUFG_inst_n_1),
        .\v_count_reg_reg[9]_0 ({main_vga_sync_n_14,main_vga_sync_n_15,main_vga_sync_n_16,main_vga_sync_n_17,main_vga_sync_n_18,main_vga_sync_n_19,main_vga_sync_n_20,main_vga_sync_n_21,main_vga_sync_n_22,main_vga_sync_n_23}),
        .vgaBlue_OBUF(vgaBlue_OBUF),
        .vgaGreen_OBUF(vgaGreen_OBUF),
        .vgaRed_OBUF(vgaRed_OBUF),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
  ram_block main_vga_vram_buffer
       (.P(wa),
        .Q(vram_data_in),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .memory_block_reg_mux_sel_b_pos_0__1_0(ra),
        .n_0_410_BUFG(n_0_410_BUFG),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
  (* SPLIT_LOADS_ON_BUFG *) 
  BUFG n_0_410_BUFG_inst
       (.I(n_0_410_BUFG_inst_n_1),
        .O(n_0_410_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    received_old_reg
       (.C(baud_BUFG),
        .CE(1'b1),
        .D(received),
        .Q(received_old),
        .R(1'b0));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(sw_IBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(sw_IBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(sw_IBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(sw_IBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(sw_IBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(sw_IBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(sw_IBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(sw_IBUF[9]));
  switch_button__parameterized0 sw_array
       (.D(sw_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF));
  text_renderer text_renderer_inst
       (.ADDRARDADDR({rom_text_line,gpu_pos_y}),
        .D({graphics_renderer_inst_n_35,graphics_renderer_inst_n_36}),
        .Q(vram_data_in),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\gpu_px_reg[3] (text_renderer_inst_n_1),
        .\pixel_data_reg[1]_0 (gpu_pos_x));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[0] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[0]),
        .Q(\uart_data_tx_reg_n_1_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[1] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[1]),
        .Q(data1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[2] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[2]),
        .Q(data2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[3] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[3]),
        .Q(data3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[4] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[4]),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[5] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[5]),
        .Q(data5),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[6] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[6]),
        .Q(data6),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_data_tx_reg[7] 
       (.C(baud_BUFG),
        .CE(has_new_data),
        .D(uart_data_rx[7]),
        .Q(data7),
        .R(1'b0));
  uart_rx usb_rs232_rx
       (.CLK(baud_BUFG),
        .E(has_new_data),
        .Q(uart_data_rx),
        .RsRx_IBUF(RsRx_IBUF),
        .received(received),
        .received_old(received_old),
        .seg_OBUF(seg_OBUF),
        .\seg_OBUF[1]_inst_i_1_0 ({p_1_in,main_display_n_2}));
  uart_tx usb_rs232_tx
       (.CLK(baud_BUFG),
        .Q({data7,data6,data5,data4,data3,data2,data1,\uart_data_tx_reg_n_1_[0] }),
        .RsTx_OBUF(RsTx_OBUF),
        .en_write_uart(en_write_uart));
  OBUF \vgaBlue_OBUF[0]_inst 
       (.I(vgaBlue_OBUF),
        .O(vgaBlue[0]));
  OBUF \vgaBlue_OBUF[1]_inst 
       (.I(vgaBlue_OBUF),
        .O(vgaBlue[1]));
  OBUF \vgaBlue_OBUF[2]_inst 
       (.I(vgaBlue_OBUF),
        .O(vgaBlue[2]));
  OBUF \vgaBlue_OBUF[3]_inst 
       (.I(vgaBlue_OBUF),
        .O(vgaBlue[3]));
  OBUF \vgaGreen_OBUF[0]_inst 
       (.I(vgaGreen_OBUF),
        .O(vgaGreen[0]));
  OBUF \vgaGreen_OBUF[1]_inst 
       (.I(vgaGreen_OBUF),
        .O(vgaGreen[1]));
  OBUF \vgaGreen_OBUF[2]_inst 
       (.I(vgaGreen_OBUF),
        .O(vgaGreen[2]));
  OBUF \vgaGreen_OBUF[3]_inst 
       (.I(vgaGreen_OBUF),
        .O(vgaGreen[3]));
  OBUF \vgaRed_OBUF[0]_inst 
       (.I(vgaRed_OBUF),
        .O(vgaRed[0]));
  OBUF \vgaRed_OBUF[1]_inst 
       (.I(vgaRed_OBUF),
        .O(vgaRed[1]));
  OBUF \vgaRed_OBUF[2]_inst 
       (.I(vgaRed_OBUF),
        .O(vgaRed[2]));
  OBUF \vgaRed_OBUF[3]_inst 
       (.I(vgaRed_OBUF),
        .O(vgaRed[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    vram_ra
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,main_vga_sync_n_14,main_vga_sync_n_15,main_vga_sync_n_16,main_vga_sync_n_17,main_vga_sync_n_18,main_vga_sync_n_19,main_vga_sync_n_20,main_vga_sync_n_21,main_vga_sync_n_22,main_vga_sync_n_23}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_vram_ra_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_vram_ra_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vga_pos_x}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_vram_ra_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_vram_ra_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_vram_ra_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_vram_ra_OVERFLOW_UNCONNECTED),
        .P({NLW_vram_ra_P_UNCONNECTED[47:19],ra}),
        .PATTERNBDETECT(NLW_vram_ra_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_vram_ra_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_vram_ra_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_vram_ra_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    vram_wa
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in__0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_vram_wa_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_vram_wa_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_in}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_vram_wa_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_vram_wa_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(graphics_renderer_inst_n_14),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b1),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_vram_wa_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_vram_wa_OVERFLOW_UNCONNECTED),
        .P({NLW_vram_wa_P_UNCONNECTED[47:19],wa}),
        .PATTERNBDETECT(NLW_vram_wa_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_vram_wa_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_vram_wa_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_vram_wa_UNDERFLOW_UNCONNECTED));
endmodule

module uart_rx
   (received,
    seg_OBUF,
    Q,
    E,
    RsRx_IBUF,
    CLK,
    \seg_OBUF[1]_inst_i_1_0 ,
    received_old);
  output received;
  output [6:0]seg_OBUF;
  output [7:0]Q;
  output [0:0]E;
  input RsRx_IBUF;
  input CLK;
  input [1:0]\seg_OBUF[1]_inst_i_1_0 ;
  input received_old;

  wire CLK;
  wire [0:0]E;
  wire [7:0]Q;
  wire RsRx_IBUF;
  wire \count[0]_i_1__0_n_1 ;
  wire \count[7]_i_1__0_n_1 ;
  wire \count[7]_i_3__0_n_1 ;
  wire [7:0]count_reg;
  wire [7:0]dout;
  wire \dout[5]_i_2_n_1 ;
  wire \dout[6]_i_2_n_1 ;
  wire \dout[7]_i_2_n_1 ;
  wire is_received_i_1_n_1;
  wire is_receiving;
  wire is_receiving0;
  wire is_receiving_i_1_n_1;
  wire last;
  wire [3:0]\main_display/sel0 ;
  wire [7:1]p_0_in__2;
  wire received;
  wire received_old;
  wire [6:0]seg_OBUF;
  wire [1:0]\seg_OBUF[1]_inst_i_1_0 ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in__2[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \count[4]_i_1__0 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(p_0_in__2[5]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \count[6]_i_1__0 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(\count[7]_i_3__0_n_1 ),
        .I4(count_reg[6]),
        .O(p_0_in__2[6]));
  LUT3 #(
    .INIT(8'h10)) 
    \count[7]_i_1__0 
       (.I0(is_receiving),
        .I1(RsRx_IBUF),
        .I2(last),
        .O(\count[7]_i_1__0_n_1 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \count[7]_i_2__0 
       (.I0(count_reg[6]),
        .I1(\count[7]_i_3__0_n_1 ),
        .I2(count_reg[3]),
        .I3(count_reg[4]),
        .I4(count_reg[5]),
        .I5(count_reg[7]),
        .O(p_0_in__2[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \count[7]_i_3__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(\count[7]_i_3__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(is_receiving),
        .D(\count[0]_i_1__0_n_1 ),
        .Q(count_reg[0]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[1]),
        .Q(count_reg[1]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[2]),
        .Q(count_reg[2]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[3]),
        .Q(count_reg[3]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[4]),
        .Q(count_reg[4]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[5]),
        .Q(count_reg[5]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[6]),
        .Q(count_reg[6]),
        .R(\count[7]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(is_receiving),
        .D(p_0_in__2[7]),
        .Q(count_reg[7]),
        .R(\count[7]_i_1__0_n_1 ));
  LUT3 #(
    .INIT(8'h10)) 
    \dout[0]_i_1 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(\dout[6]_i_2_n_1 ),
        .O(dout[0]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \dout[1]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(\dout[5]_i_2_n_1 ),
        .O(dout[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \dout[2]_i_1 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(\dout[6]_i_2_n_1 ),
        .O(dout[2]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \dout[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[6]),
        .I3(count_reg[5]),
        .I4(\dout[5]_i_2_n_1 ),
        .O(dout[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \dout[4]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(\dout[6]_i_2_n_1 ),
        .O(dout[4]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \dout[5]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(\dout[5]_i_2_n_1 ),
        .O(dout[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \dout[5]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[7]),
        .O(\dout[5]_i_2_n_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    \dout[6]_i_1 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(\dout[6]_i_2_n_1 ),
        .O(dout[6]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \dout[6]_i_2 
       (.I0(count_reg[7]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[3]),
        .O(\dout[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \dout[7]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[5]),
        .I5(\dout[7]_i_2_n_1 ),
        .O(dout[7]));
  LUT3 #(
    .INIT(8'h01)) 
    \dout[7]_i_2 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(\dout[7]_i_2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(CLK),
        .CE(dout[0]),
        .D(RsRx_IBUF),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(CLK),
        .CE(dout[1]),
        .D(RsRx_IBUF),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(CLK),
        .CE(dout[2]),
        .D(RsRx_IBUF),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(CLK),
        .CE(dout[3]),
        .D(RsRx_IBUF),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(CLK),
        .CE(dout[4]),
        .D(RsRx_IBUF),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(CLK),
        .CE(dout[5]),
        .D(RsRx_IBUF),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(CLK),
        .CE(dout[6]),
        .D(RsRx_IBUF),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(CLK),
        .CE(dout[7]),
        .D(RsRx_IBUF),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA2)) 
    is_received_i_1
       (.I0(received),
        .I1(last),
        .I2(RsRx_IBUF),
        .I3(is_receiving),
        .I4(is_receiving0),
        .O(is_received_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    is_received_reg
       (.C(CLK),
        .CE(1'b1),
        .D(is_received_i_1_n_1),
        .Q(received),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00BA)) 
    is_receiving_i_1
       (.I0(is_receiving),
        .I1(RsRx_IBUF),
        .I2(last),
        .I3(is_receiving0),
        .O(is_receiving_i_1_n_1));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    is_receiving_i_2
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[5]),
        .I5(\dout[7]_i_2_n_1 ),
        .O(is_receiving0));
  FDRE #(
    .INIT(1'b0)) 
    is_receiving_reg
       (.C(CLK),
        .CE(1'b1),
        .D(is_receiving_i_1_n_1),
        .Q(is_receiving),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(CLK),
        .CE(1'b1),
        .D(RsRx_IBUF),
        .Q(last),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [2]),
        .I2(\main_display/sel0 [0]),
        .I3(\main_display/sel0 [1]),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [2]),
        .I2(\main_display/sel0 [1]),
        .I3(\main_display/sel0 [0]),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [0]),
        .I2(\main_display/sel0 [1]),
        .I3(\main_display/sel0 [2]),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [2]),
        .I2(\main_display/sel0 [0]),
        .I3(\main_display/sel0 [1]),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [1]),
        .I2(\main_display/sel0 [2]),
        .I3(\main_display/sel0 [0]),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [2]),
        .I2(\main_display/sel0 [0]),
        .I3(\main_display/sel0 [1]),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\main_display/sel0 [3]),
        .I1(\main_display/sel0 [0]),
        .I2(\main_display/sel0 [2]),
        .I3(\main_display/sel0 [1]),
        .O(seg_OBUF[6]));
  LUT4 #(
    .INIT(16'hE020)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(Q[7]),
        .I1(\seg_OBUF[1]_inst_i_1_0 [0]),
        .I2(\seg_OBUF[1]_inst_i_1_0 [1]),
        .I3(Q[3]),
        .O(\main_display/sel0 [3]));
  LUT4 #(
    .INIT(16'hE020)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(Q[4]),
        .I1(\seg_OBUF[1]_inst_i_1_0 [0]),
        .I2(\seg_OBUF[1]_inst_i_1_0 [1]),
        .I3(Q[0]),
        .O(\main_display/sel0 [0]));
  LUT4 #(
    .INIT(16'hE020)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(Q[6]),
        .I1(\seg_OBUF[1]_inst_i_1_0 [0]),
        .I2(\seg_OBUF[1]_inst_i_1_0 [1]),
        .I3(Q[2]),
        .O(\main_display/sel0 [2]));
  LUT4 #(
    .INIT(16'hE020)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(Q[5]),
        .I1(\seg_OBUF[1]_inst_i_1_0 [0]),
        .I2(\seg_OBUF[1]_inst_i_1_0 [1]),
        .I3(Q[1]),
        .O(\main_display/sel0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \uart_data_tx[7]_i_1 
       (.I0(received),
        .I1(received_old),
        .O(E));
endmodule

module uart_tx
   (RsTx_OBUF,
    en_write_uart,
    CLK,
    Q);
  output RsTx_OBUF;
  input en_write_uart;
  input CLK;
  input [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire RsTx_OBUF;
  wire \count[7]_i_1_n_1 ;
  wire \count[7]_i_3_n_1 ;
  wire [7:0]count_reg;
  wire dout;
  wire dout_i_2_n_1;
  wire dout_i_3_n_1;
  wire dout_i_4_n_1;
  wire dout_i_5_n_1;
  wire dout_i_6_n_1;
  wire en_write_uart;
  wire is_sending;
  wire is_sending_i_1_n_1;
  wire is_sending_i_2_n_1;
  wire last;
  wire [7:0]p_0_in__1;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in__1[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_1 
       (.I0(\count[7]_i_3_n_1 ),
        .I1(count_reg[6]),
        .O(p_0_in__1[6]));
  LUT3 #(
    .INIT(8'h10)) 
    \count[7]_i_1 
       (.I0(is_sending),
        .I1(last),
        .I2(en_write_uart),
        .O(\count[7]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    \count[7]_i_2 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(\count[7]_i_3_n_1 ),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[7]_i_3 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(\count[7]_i_3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[0]),
        .Q(count_reg[0]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[1]),
        .Q(count_reg[1]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[2]),
        .Q(count_reg[2]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[3]),
        .Q(count_reg[3]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[4]),
        .Q(count_reg[4]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[5]),
        .Q(count_reg[5]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[6]),
        .Q(count_reg[6]),
        .R(\count[7]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(is_sending),
        .D(p_0_in__1[7]),
        .Q(count_reg[7]),
        .R(\count[7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h0057)) 
    dout_i_1
       (.I0(count_reg[7]),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(dout_i_3_n_1),
        .O(dout));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    dout_i_2
       (.I0(dout_i_4_n_1),
        .I1(count_reg[7]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(dout_i_5_n_1),
        .I5(dout_i_6_n_1),
        .O(dout_i_2_n_1));
  LUT4 #(
    .INIT(16'hFFEF)) 
    dout_i_3
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .O(dout_i_3_n_1));
  LUT6 #(
    .INIT(64'hCFC00000A0A00000)) 
    dout_i_4
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(count_reg[6]),
        .I3(Q[2]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(dout_i_4_n_1));
  LUT6 #(
    .INIT(64'h0000000088F88888)) 
    dout_i_5
       (.I0(Q[7]),
        .I1(count_reg[7]),
        .I2(count_reg[6]),
        .I3(count_reg[4]),
        .I4(Q[3]),
        .I5(count_reg[5]),
        .O(dout_i_5_n_1));
  LUT6 #(
    .INIT(64'h00A000A00FC000C0)) 
    dout_i_6
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .I4(Q[0]),
        .I5(count_reg[6]),
        .O(dout_i_6_n_1));
  FDRE #(
    .INIT(1'b1)) 
    dout_reg
       (.C(CLK),
        .CE(dout),
        .D(dout_i_2_n_1),
        .Q(RsTx_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF0000FFDF0000)) 
    is_sending_i_1
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(is_sending_i_2_n_1),
        .I5(dout_i_3_n_1),
        .O(is_sending_i_1_n_1));
  LUT3 #(
    .INIT(8'hF2)) 
    is_sending_i_2
       (.I0(en_write_uart),
        .I1(last),
        .I2(is_sending),
        .O(is_sending_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    is_sending_reg
       (.C(CLK),
        .CE(1'b1),
        .D(is_sending_i_1_n_1),
        .Q(is_sending),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_reg
       (.C(CLK),
        .CE(1'b1),
        .D(en_write_uart),
        .Q(last),
        .R(1'b0));
endmodule

module vga_sync
   (Hsync_OBUF,
    Vsync_OBUF,
    n_0_410_BUFG_inst_n_1,
    Q,
    \v_count_reg_reg[9]_0 ,
    vgaBlue_OBUF,
    vgaGreen_OBUF,
    vgaRed_OBUF,
    clk_IBUF_BUFG,
    AR,
    n_0_410_BUFG,
    vga_b,
    vga_g,
    vga_r);
  output Hsync_OBUF;
  output Vsync_OBUF;
  output n_0_410_BUFG_inst_n_1;
  output [9:0]Q;
  output [9:0]\v_count_reg_reg[9]_0 ;
  output [0:0]vgaBlue_OBUF;
  output [0:0]vgaGreen_OBUF;
  output [0:0]vgaRed_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input n_0_410_BUFG;
  input vga_b;
  input vga_g;
  input vga_r;

  wire [0:0]AR;
  wire Hsync_OBUF;
  wire [9:0]Q;
  wire Vsync_OBUF;
  wire clk_IBUF_BUFG;
  wire \h_count_reg[0]_i_1_n_1 ;
  wire \h_count_reg[1]_i_1_n_1 ;
  wire \h_count_reg[2]_i_1_n_1 ;
  wire \h_count_reg[3]_i_1_n_1 ;
  wire \h_count_reg[4]_i_1_n_1 ;
  wire \h_count_reg[4]_i_2_n_1 ;
  wire \h_count_reg[5]_i_1_n_1 ;
  wire \h_count_reg[6]_i_1_n_1 ;
  wire \h_count_reg[7]_i_1_n_1 ;
  wire \h_count_reg[8]_i_1_n_1 ;
  wire \h_count_reg[9]_i_1_n_1 ;
  wire \h_count_reg[9]_i_2_n_1 ;
  wire hsync_next;
  wire n_0_410_BUFG;
  wire n_0_410_BUFG_inst_n_1;
  wire [1:0]pixel_next;
  wire [1:0]pixel_reg;
  wire v_count_reg0;
  wire \v_count_reg[0]_i_1_n_1 ;
  wire \v_count_reg[0]_i_2_n_1 ;
  wire \v_count_reg[1]_i_1_n_1 ;
  wire \v_count_reg[2]_i_1_n_1 ;
  wire \v_count_reg[3]_i_1_n_1 ;
  wire \v_count_reg[4]_i_1_n_1 ;
  wire \v_count_reg[5]_i_1_n_1 ;
  wire \v_count_reg[6]_i_1_n_1 ;
  wire \v_count_reg[7]_i_1_n_1 ;
  wire \v_count_reg[8]_i_1_n_1 ;
  wire \v_count_reg[9]_i_2_n_1 ;
  wire \v_count_reg[9]_i_3_n_1 ;
  wire \v_count_reg[9]_i_4_n_1 ;
  wire [9:0]\v_count_reg_reg[9]_0 ;
  wire [0:0]vgaBlue_OBUF;
  wire [0:0]vgaGreen_OBUF;
  wire [0:0]vgaRed_OBUF;
  wire \vgaRed_OBUF[3]_inst_i_3_n_1 ;
  wire vga_b;
  wire vga_g;
  wire vga_r;
  wire vsync_next;

  LUT1 #(
    .INIT(2'h1)) 
    \h_count_reg[0]_i_1 
       (.I0(Q[0]),
        .O(\h_count_reg[0]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h28)) 
    \h_count_reg[1]_i_1 
       (.I0(\h_count_reg[4]_i_2_n_1 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\h_count_reg[1]_i_1_n_1 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \h_count_reg[2]_i_1 
       (.I0(\h_count_reg[4]_i_2_n_1 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\h_count_reg[2]_i_1_n_1 ));
  (* \PinAttr:I4:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \h_count_reg[3]_i_1 
       (.I0(\h_count_reg[4]_i_2_n_1 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\h_count_reg[3]_i_1_n_1 ));
  (* \PinAttr:I5:HOLD_DETOUR  = "149" *) 
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \h_count_reg[4]_i_1 
       (.I0(\h_count_reg[4]_i_2_n_1 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\h_count_reg[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \h_count_reg[4]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(\h_count_reg[9]_i_2_n_1 ),
        .O(\h_count_reg[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \h_count_reg[5]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(\h_count_reg[9]_i_2_n_1 ),
        .O(\h_count_reg[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \h_count_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\h_count_reg[9]_i_2_n_1 ),
        .O(\h_count_reg[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \h_count_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\h_count_reg[9]_i_2_n_1 ),
        .O(\h_count_reg[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \h_count_reg[8]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(\h_count_reg[9]_i_2_n_1 ),
        .O(\h_count_reg[8]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    \h_count_reg[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(\h_count_reg[9]_i_2_n_1 ),
        .O(\h_count_reg[9]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_count_reg[9]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\h_count_reg[9]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[0]_i_1_n_1 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[1]_i_1_n_1 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[2]_i_1_n_1 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[3]_i_1_n_1 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[4]_i_1_n_1 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[5]_i_1_n_1 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[6]_i_1_n_1 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[7]_i_1_n_1 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[8]_i_1_n_1 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \h_count_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(n_0_410_BUFG),
        .CLR(AR),
        .D(\h_count_reg[9]_i_1_n_1 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h0008080808080800)) 
    hsync_reg_i_1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(hsync_next));
  FDCE #(
    .INIT(1'b0)) 
    hsync_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(hsync_next),
        .Q(Hsync_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    n_0_410_BUFG_inst_i_1
       (.I0(pixel_reg[0]),
        .I1(pixel_reg[1]),
        .O(n_0_410_BUFG_inst_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_reg[0]_i_1 
       (.I0(pixel_reg[0]),
        .O(pixel_next[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_reg[1]_i_1 
       (.I0(pixel_reg[0]),
        .I1(pixel_reg[1]),
        .O(pixel_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(pixel_next[0]),
        .Q(pixel_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pixel_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(pixel_next[1]),
        .Q(pixel_reg[1]));
  LUT5 #(
    .INIT(32'h0000FFF7)) 
    \v_count_reg[0]_i_1 
       (.I0(\v_count_reg_reg[9]_0 [2]),
        .I1(\v_count_reg_reg[9]_0 [3]),
        .I2(\v_count_reg[0]_i_2_n_1 ),
        .I3(\v_count_reg_reg[9]_0 [1]),
        .I4(\v_count_reg_reg[9]_0 [0]),
        .O(\v_count_reg[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \v_count_reg[0]_i_2 
       (.I0(\v_count_reg_reg[9]_0 [8]),
        .I1(\v_count_reg_reg[9]_0 [9]),
        .I2(\v_count_reg_reg[9]_0 [6]),
        .I3(\v_count_reg_reg[9]_0 [7]),
        .I4(\v_count_reg_reg[9]_0 [5]),
        .I5(\v_count_reg_reg[9]_0 [4]),
        .O(\v_count_reg[0]_i_2_n_1 ));
  LUT3 #(
    .INIT(8'h28)) 
    \v_count_reg[1]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [1]),
        .I2(\v_count_reg_reg[9]_0 [0]),
        .O(\v_count_reg[1]_i_1_n_1 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count_reg[2]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [2]),
        .I2(\v_count_reg_reg[9]_0 [0]),
        .I3(\v_count_reg_reg[9]_0 [1]),
        .O(\v_count_reg[2]_i_1_n_1 ));
  (* \PinAttr:I4:HOLD_DETOUR  = "198" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count_reg[3]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [3]),
        .I2(\v_count_reg_reg[9]_0 [1]),
        .I3(\v_count_reg_reg[9]_0 [0]),
        .I4(\v_count_reg_reg[9]_0 [2]),
        .O(\v_count_reg[3]_i_1_n_1 ));
  (* \PinAttr:I5:HOLD_DETOUR  = "184" *) 
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count_reg[4]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [4]),
        .I2(\v_count_reg_reg[9]_0 [1]),
        .I3(\v_count_reg_reg[9]_0 [0]),
        .I4(\v_count_reg_reg[9]_0 [3]),
        .I5(\v_count_reg_reg[9]_0 [2]),
        .O(\v_count_reg[4]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \v_count_reg[5]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [5]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .O(\v_count_reg[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count_reg[6]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [6]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(\v_count_reg_reg[9]_0 [5]),
        .O(\v_count_reg[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count_reg[7]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [7]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(\v_count_reg_reg[9]_0 [6]),
        .I4(\v_count_reg_reg[9]_0 [5]),
        .O(\v_count_reg[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count_reg[8]_i_1 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [8]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(\v_count_reg_reg[9]_0 [7]),
        .I4(\v_count_reg_reg[9]_0 [5]),
        .I5(\v_count_reg_reg[9]_0 [6]),
        .O(\v_count_reg[8]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    \v_count_reg[9]_i_1 
       (.I0(pixel_reg[1]),
        .I1(pixel_reg[0]),
        .I2(\h_count_reg[4]_i_2_n_1 ),
        .O(v_count_reg0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \v_count_reg[9]_i_2 
       (.I0(\v_count_reg[9]_i_3_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [9]),
        .I2(\v_count_reg[9]_i_4_n_1 ),
        .I3(\vgaRed_OBUF[3]_inst_i_3_n_1 ),
        .O(\v_count_reg[9]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \v_count_reg[9]_i_3 
       (.I0(\v_count_reg_reg[9]_0 [2]),
        .I1(\v_count_reg_reg[9]_0 [3]),
        .I2(\v_count_reg[0]_i_2_n_1 ),
        .I3(\v_count_reg_reg[9]_0 [1]),
        .I4(\v_count_reg_reg[9]_0 [0]),
        .O(\v_count_reg[9]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count_reg[9]_i_4 
       (.I0(\v_count_reg_reg[9]_0 [2]),
        .I1(\v_count_reg_reg[9]_0 [3]),
        .I2(\v_count_reg_reg[9]_0 [0]),
        .I3(\v_count_reg_reg[9]_0 [1]),
        .I4(\v_count_reg_reg[9]_0 [4]),
        .O(\v_count_reg[9]_i_4_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[0]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[1]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[2]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[3]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[4]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[5]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[6]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[7]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[8]_i_1_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \v_count_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(v_count_reg0),
        .CLR(AR),
        .D(\v_count_reg[9]_i_2_n_1 ),
        .Q(\v_count_reg_reg[9]_0 [9]));
  LUT6 #(
    .INIT(64'h00001F0000000000)) 
    \vgaBlue_OBUF[3]_inst_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(vga_b),
        .I4(\v_count_reg_reg[9]_0 [9]),
        .I5(\vgaRed_OBUF[3]_inst_i_3_n_1 ),
        .O(vgaBlue_OBUF));
  LUT6 #(
    .INIT(64'h00001F0000000000)) 
    \vgaGreen_OBUF[3]_inst_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(vga_g),
        .I4(\v_count_reg_reg[9]_0 [9]),
        .I5(\vgaRed_OBUF[3]_inst_i_3_n_1 ),
        .O(vgaGreen_OBUF));
  LUT6 #(
    .INIT(64'h00001F0000000000)) 
    \vgaRed_OBUF[3]_inst_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(vga_r),
        .I4(\v_count_reg_reg[9]_0 [9]),
        .I5(\vgaRed_OBUF[3]_inst_i_3_n_1 ),
        .O(vgaRed_OBUF));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \vgaRed_OBUF[3]_inst_i_3 
       (.I0(\v_count_reg_reg[9]_0 [7]),
        .I1(\v_count_reg_reg[9]_0 [5]),
        .I2(\v_count_reg_reg[9]_0 [6]),
        .I3(\v_count_reg_reg[9]_0 [8]),
        .O(\vgaRed_OBUF[3]_inst_i_3_n_1 ));
  (* \PinAttr:I4:HOLD_DETOUR  = "234" *) 
  LUT5 #(
    .INIT(32'h00010004)) 
    vsync_reg_i_1
       (.I0(\v_count_reg[0]_i_2_n_1 ),
        .I1(\v_count_reg_reg[9]_0 [1]),
        .I2(\v_count_reg_reg[9]_0 [3]),
        .I3(\v_count_reg_reg[9]_0 [2]),
        .I4(\v_count_reg_reg[9]_0 [0]),
        .O(vsync_next));
  FDCE #(
    .INIT(1'b0)) 
    vsync_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(vsync_next),
        .Q(Vsync_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
