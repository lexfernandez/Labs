`timescale 1ns / 1ps
module FullAdder_4b(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry_out
    );
	
	wire b1_cout,b2_cout,b3_cout;
	
	FullAdder_1b b1(a[0],b[0],0,sum[0],b1_cout);
	FullAdder_1b b2(a[1],b[1],b1_cout,sum[1],b2_cout);
	FullAdder_1b b3(a[2],b[2],b2_cout,sum[2],b3_cout);
	FullAdder_1b b4(a[3],b[3],b3_cout,sum[3],carry_out);

endmodule
