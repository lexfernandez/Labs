`timescale 1ns / 1ps
module FullAdder_1b_tb();
	reg [2:0] count;
	reg a;
   reg b;
   reg carry_in;
   wire sum;
   wire carry_out;
	
	FullAdder_1b fa1(a,b,carry_in,sum,carry_out);

	initial
	begin
		count = 3'b000;
		repeat(8)
		begin
			a = count[2];
			b = count[1];
			carry_in = count[0];
			#100
			
			count = count+1;
		end
	end
endmodule
