`timescale 1ns / 1ps
module FullAdder_1b(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
    );

	wire x1_out,a1_out,a2_out;
	
	xor x1(x1_out,a,b);
	xor x2(sum,x1_out,carry_in);
	and a1(a1_out,x1_out,carry_in);
	and a2(a2_out,a,b);
	or o1(carry_out,a1_out,a2_out);
	
endmodule
