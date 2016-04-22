`timescale 1ns / 1ps

module ALU(
    input [7:0] a,
    input [7:0] b,
    input [2:0] _function,
    output reg [7:0] result,
	 output reg is_zero,
	 output reg is_sign
    );

	parameter ADD 	= 4'H0;
	parameter SUB 	= 4'H1;
	parameter AND 	= 4'H2;
	parameter OR 	= 4'H3;
	parameter XOR 	= 4'H4;
	
	always @(a or b or _function)
	begin
		case (_function)
			ADD:	result <= a + b;
			SUB:	result <= a - b;
			AND:	result <= a & b;
			OR:	result <= a | b;
			XOR:	result <= a ^ b;
			default: result <= 8'H0;
		endcase
		is_zero <= result == 8'H0 ? 1'b1 : 1'b0;
		is_sign <= result[7];
	end


endmodule
