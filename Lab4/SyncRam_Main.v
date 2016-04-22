`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:11 10/27/2015 
// Design Name: 
// Module Name:    SyncRam_Main 
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
module SyncRam_Main(
    input we,
    input clk,
    input [3:0] address,
    input [3:0] data_in,
    output [3:0] data_out,
	 output [6:0] segments
    );
	 
	 SyncRam ram (we,clk,address,data_in,data_out);
	 SevenSegmentDec ssd (data_in,segments);
	
endmodule
