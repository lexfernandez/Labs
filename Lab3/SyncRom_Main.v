`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:08 10/25/2015 
// Design Name: 
// Module Name:    SyncRom_Main 
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
module SyncRom_Main(
    input clk,
    input [3:0] address,
    output [3:0] data,
    output [13:0] segments
    );
	
	wire [3:0] sdata;
	assign data = sdata;
	
	SyncRom rom (clk,address,sdata);
	SevenSegmentDec ssd (sdata,segments);

endmodule
