`timescale 1ns / 1ps
//-------------------------------------------------------
// File name    : memory.v
// Title        : Memory
// Library      : nanoLADA
// Purpose      : Computer Architecture
// Developers   : Krerk Piromsopa, Ph. D.
//              : Chulalongkorn University.
module memory(data,address,wr,clock);
parameter DATA_FILE = "data.list";
parameter DATA_WIDTH=32;
parameter ADDR_WIDTH=16;

inout	[DATA_WIDTH-1:0]	data;
input	[ADDR_WIDTH-1:0]	address;
input		wr;
input		clock;

reg	[DATA_WIDTH-1:0]	mem[0:1<<ADDR_WIDTH -1];

reg	[DATA_WIDTH-1:0]	data_out;
// Tri-State buffer
assign data=(wr==0) ? data_out:32'bz;

integer i;
initial
begin
	$readmemb(DATA_FILE,mem);
end

always @(address)
begin
	$display("%10d - mem[%h] -  %h (%d)\n",$time, address,data_out, data_out);	
	data_out = mem[address];
end

always @(posedge clock)
begin : MEM_WRITE
	if (wr) begin
		mem[address]=data;
		$display("%10d - MEM[%h] <- %h (%d)",$time, address, data, data);
	end
end

endmodule
