`timescale 1ns / 1ps
//-------------------------------------------------------
// File name    : nano_sc_system.v
// Title        : nanoCPU Single Cycle system.
// Library      : nanoLADA
// Purpose      : Computer Architecture
// Developers   : Krerk Piromsopa, Ph. D.
//              : Chulalongkorn University.

module nano_sc_system();

parameter ADDR_WIDTH=16;

wire 	[31:0]	p_address;
wire 	[31:0]	p_data;
wire	[31:0]	d_address;
wire	mem_wr;
wire	[31:0]	d_data;
reg		clock;
reg		nreset;

nanocpu	CPU(p_address,p_data,d_address,d_data,mem_wr,clock,nreset);
rom 	#(.PROG_FILE("lab05_02.init"), .ADDR_WIDTH(ADDR_WIDTH)) PROGMEM(p_data,p_address[ADDR_WIDTH + 1:2]);
memory 	#(.DATA_FILE("data.list"), .ADDR_WIDTH(ADDR_WIDTH)) DATAMEM(d_data,d_address[ADDR_WIDTH + 1:2],mem_wr,clock);

initial begin
	$dumpfile("nano_sc_system.dump");
	$dumpvars(4, nano_sc_system);

	clock=0;
	nreset=0;
	#40;
	nreset=1;
	#2000;
	$finish;
end

always begin : CLOCK
	#20
	clock=~clock;
end


endmodule
