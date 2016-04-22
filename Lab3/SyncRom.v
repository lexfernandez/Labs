`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:39:30 10/25/2015 
// Design Name: 
// Module Name:    SyncRom 
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
module SyncRom(
    input clk,
    input [3:0] address,
    output [3:0] data
    );

	reg [3:0] rdata;
	
	assign data = rdata;
	
	always @(posedge clk)
	begin
		case (address)
			4'h0: rdata = 4'h0;
			4'h1: rdata = 4'h1;
			4'h2: rdata = 4'h2;
			4'h3: rdata = 4'h3;
			4'h4: rdata = 4'h4;
			4'h5: rdata = 4'h5;
			4'h6: rdata = 4'h6;
			4'h7: rdata = 4'h7;
			4'h8: rdata = 4'h8;
			4'h9: rdata = 4'h9;
			4'hA: rdata = 4'hA;
			4'hB: rdata = 4'hB;
			4'hC: rdata = 4'hC;
			4'hD: rdata = 4'hD;
			4'hE: rdata = 4'hE;
			4'hF: rdata = 4'hF;
			default: rdata = 4'h0;
		endcase
	end

endmodule
