`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:14 12/13/2015 
// Design Name: 
// Module Name:    Clock 
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
module Clock(
	 input reset,
    output reg pulse
    );
	 
	reg [29:0] counter;

	always @(posedge 1)
	begin
		counter = counter + 1;
		if(reset)
		begin
			counter = 0;
		end
		
		if(counter == 1073741823)
		begin
			counter=0;
			pulse=~pulse;
		end
	end

endmodule
