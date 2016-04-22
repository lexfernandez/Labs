`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:03 12/14/2015
// Design Name:   SCounter_Main
// Module Name:   C:/Users/Alex/Documents/Labs/Clock/test.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCounter_Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg resetclk;
	reg reset;

	// Outputs
	wire [6:0] segments;

	// Instantiate the Unit Under Test (UUT)
	SCounter_Main uut (
		.resetclk(resetclk), 
		.reset(reset), 
		.segments(segments)
	);

	initial begin
		// Initialize Inputs
		resetclk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

