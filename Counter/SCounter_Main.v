`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:42 10/20/2015 
// Design Name: 
// Module Name:    SCounter_Main 
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
module SCounter_Main(
	input control,
	input clk,
	input reset,
	output [13:0] segments
    );

wire [3:0] count;
SCounter counter1 (control,clk,reset,count);
SevenSegmentDec ssdec1 (count,segments);

endmodule

