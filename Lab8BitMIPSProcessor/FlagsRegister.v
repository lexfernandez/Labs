`timescale 1ns / 1ps

module FlagsRegister(
    input is_zero,
    input is_sign,
	 input clk,
    input we,
    output isZero,
    output isSign
    );
	
	reg zero,sign;
	assign isZero = zero;
	assign isSign = sign;
	 
	always @(posedge clk)
	begin
		if(we==1)
		begin
			zero <= is_zero;
			sign <= is_sign;
		end
	end

endmodule
