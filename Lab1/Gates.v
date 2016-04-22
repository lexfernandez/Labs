`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:57 10/20/2015 
// Design Name: 
// Module Name:    Gates 
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
module Gates(
	input a,
	input b,
	output [5:0] r
    );
	 
 assign r[0] = a & b;
 assign r[1] = ~(a & b);
 assign r[2] = a | b;
 assign r[3] = ~(a | b);
 assign r[4] = a ^ b;
 assign r[5] = ~(a ^ b);

endmodule
