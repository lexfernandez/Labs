`timescale 1ns / 1ps

module ControlUnit_tb;

	// Inputs
	reg [4:0] opcode;

	// Outputs
	wire reg_write;
	wire is_move;
	wire is_mem_access;
	wire is_imm;
	wire [2:0] alu_function;
	wire flags_write;
	wire dm_write_enable;
	wire is_jz;
	wire is_jnz;
	wire is_jl;
	wire is_jg;
	wire is_jump;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.opcode(opcode), 
		.reg_write(reg_write), 
		.is_move(is_move), 
		.is_mem_access(is_mem_access), 
		.is_imm(is_imm), 
		.alu_function(alu_function), 
		.flags_write(flags_write), 
		.dm_write_enable(dm_write_enable), 
		.is_jz(is_jz), 
		.is_jnz(is_jnz), 
		.is_jl(is_jl), 
		.is_jg(is_jg), 
		.is_jump(is_jump)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		repeat(16)
		begin
			opcode = opcode+1;
			#50;
		end

	end
      
endmodule

