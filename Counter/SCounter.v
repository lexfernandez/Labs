`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:27 10/20/2015 
// Design Name: 
// Module Name:    SCounter 
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
module SCounter(
	input control,
	input clk,
	input reset,
	output [3:0] out_value
    );

reg [3:0] count;

assign out_value = count;

always @ (posedge clk)
begin
	if(reset)
		count = 4'b0000;
	else
		if(control)
			count = count + 1;
		else
			count = count - 1;
end

endmodule
