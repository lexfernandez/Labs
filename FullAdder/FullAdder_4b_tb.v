`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:42 03/10/2016 
// Design Name: 
// Module Name:    FullAdder_4b_tb 
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
module FullAdder_4b_tb(
    );
	reg [7:0] count;
	reg [3:0] a;
   reg [3:0] b;
   wire [3:0] sum;
   wire carry_out;
	integer f;
	
	FullAdder_4b fa4b(a,b,sum,carry_out);

	initial
	begin
		f =  $fopen("output.txt","w");
		count = 8'h0;
		repeat(256)
		begin
			a = count[7:4];
			b = count[3:0];
			$fwrite(f,"%b,%b,%b,%b,%b\n",sum[3],sum[2],sum[1],sum[0],carry_out);
			#100
			count = count+1;
		end
		$fclose(f);
	end

endmodule
