`timescale 1ns / 1ps

module RegisterFile(
	 input clk,
    input write_enable,
    input [1:0] read_addr1,
    input [1:0] read_addr2,
    input [1:0] write_addr,
    input [7:0] write_data,
    output reg [7:0] read_data1,
    output reg [7:0] read_data2
    );

	reg [7:0] registers [3:0];
	initial begin
		registers[0] <= 8'b00000000;
		registers[1] <= 8'b00000000;
		registers[2] <= 8'b00000000;
		registers[3] <= 8'b00000000;
	end
	
	always @( posedge clk)
	begin
		if(write_enable == 1)
		begin
			registers[write_addr] <= write_data;
		end
	end
	
	always @( posedge clk)
	begin
		read_data1 <= registers[read_addr1]; 
		read_data2 <= registers[read_addr2]; 
	end

endmodule
