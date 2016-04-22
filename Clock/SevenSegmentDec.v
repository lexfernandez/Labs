`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:38 10/20/2015 
// Design Name: 
// Module Name:    SevenSegmentDec 
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
module SevenSegmentDec(
	input [3:0] value,
	output reg [6:0] segments
    );

always @(value)
begin
	case (value)
		4'h0: segments = 7'b0111111;
		4'h1: segments = 7'b0000110;
		4'h2: segments = 7'b1011011;
		4'h3: segments = 7'b1001111;
		4'h4: segments = 7'b1100110;
		4'h5: segments = 7'b1101101;
		4'h6: segments = 7'b1111101;
		4'h7: segments = 7'b0000111;
		4'h8: segments = 7'b1111111;
		4'h9: segments = 7'b1100111;
		4'hA: segments = 7'b1110111;
		4'hB: segments = 7'b1111100;
		4'hC: segments = 7'b0111001;
		4'hD: segments = 7'b1011110;
		4'hE: segments = 7'b1111001;
		4'hF: segments = 7'b1110001;
		default: segments = 7'b0111111;
	endcase
end
endmodule
