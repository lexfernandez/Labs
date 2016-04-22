`timescale 1ns / 1ps

module ALU_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] _function;

	// Outputs
	wire [3:0] result;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		a, 
		b, 
		_function, 
		result
	);

	initial begin
		// Initialize Inputs
		a = 3;
		b = 2;
		_function = 0;

		#100;
		
		a = 3;
		b = 2;
		_function = 1;

		#100;
		
		a = 0;
		b = 1;
		_function = 2;

		#100;
		a = 1;
		b = 1;
		#100;
		
		a = 0;
		b = 1;
		_function = 3;

		#100;
		
		a = 1;
		b = 1;
		_function = 3;

		#100;
      
		a = 0;
		b = 1;
		_function = 4;

		#100;
		
		a = 1;
		b = 1;
		_function = 4;

		#100;
		
		
		// Add stimulus here

	end
      
endmodule

