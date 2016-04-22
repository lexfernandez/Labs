`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:48 10/27/2015 
// Design Name: 
// Module Name:    SyncRam 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SyncRam(
    input we,
    input clk,
    input [3:0] address,
    input [3:0] data_in,
    output [3:0] data_out
    );

	reg [3:0] mem_data[0:15];
	reg [3:0] read_data;
	assign data_out = read_data;

	always @(posedge clk)
	begin
		if(!we)
			read_data = mem_data[address];
		else
			mem_data[address] = data_in;
	end
endmodule
