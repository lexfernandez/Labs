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
	output reg [13:0] segments
    );

always @(value)
begin
	case (value)
		4'h0: segments = 14'b01111110111111;//0
		4'h1: segments = 14'b01111110000110;//1
		4'h2: segments = 14'b01111111011011;//2
		4'h3: segments = 14'b01111111001111;//3
		4'h4: segments = 14'b01111111100110;//4
		4'h5: segments = 14'b01111111101101;//5
		4'h6: segments = 14'b01111111111101;//6
		4'h7: segments = 14'b01111110000111;//7
		4'h8: segments = 14'b01111111111111;//8
		4'h9: segments = 14'b01111111100111;//9
		4'hA: segments = 14'b00001100111111;//10
		4'hB: segments = 14'b00001100000110;//11
		4'hC: segments = 14'b00001101011011;//12
		4'hD: segments = 14'b00001101001111;//13
		4'hE: segments = 14'b00001101100110;//14
		4'hF: segments = 14'b00001101101101;//15
		default: segments = 14'b01111110111111;
	endcase
end
endmodule
