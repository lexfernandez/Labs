`timescale 1ns / 1ps

module ProgramCounter(
		input clk,
		input [7:0] address,
		output [7:0] pc
		);
		
	
	
	reg [7:0] xpc;
	assign pc = xpc;
	 
	
	 always @(posedge clk)
	 begin
		xpc = address;
	 end

	initial
	begin
	 xpc = 8'H0;
	end
endmodule
