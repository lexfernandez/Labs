`timescale 1ns / 1ps

module PCAdder(
    input [7:0] PC,
    output reg [7:0] NextPC
    );
	
	always @(PC)
	begin
		NextPC <= PC + 1;
	end

endmodule
