`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:57:20 02/24/2016
// Design Name:   Gates
// Module Name:   C:/Users/Alex/Documents/Labs/Lab1/Gates_tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Gates
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Gates_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire [5:0] r;

	// Instantiate the Unit Under Test (UUT)
	Gates uut (
		.a(a), 
		.b(b), 
		.r(r)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		a= 1;
		b=1;
		
		#100;
		a=0;
		b=1;
		
		#100;
		
		a=1;
		b=0;
		
		#100;
		// Add stimulus here

	end
      
endmodule

