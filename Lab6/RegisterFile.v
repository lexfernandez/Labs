`timescale 1ns / 1ps

module RegisterFile(
    input [1:0] read_addr1,
    input [1:0] read_addr2,
    input [1:0] write_addr,
    input [7:0] write_data,
    input clk,
    input write_enable,
    output [7:0] read_data1,
    output [7:0] read_data2
    );

	reg [7:0] registers [3:0];
	assign read_data1 =	registers[read_addr1]; 
	assign read_data2 =	registers[read_addr2]; 
	
	always @( posedge clk)
	begin
		if(write_enable)
		begin
			registers[write_addr] <= write_data;
		end
	end

endmodule
