`timescale 1ns / 1ps
module Ram(
    input we,
    input clk,
    input [7:0] address,
    input [7:0] data_in,
    output reg [7:0] data_out
    );

	reg [7:0] mem_data[0:15];

	always @(posedge clk)
	begin
		if(we==1)
			mem_data[address] <= data_in;
	end
	
	always @(address)
	begin
			data_out <= mem_data[address];
	end
	
	
endmodule
