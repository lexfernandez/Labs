`timescale 1ns / 1ps

module ControlUnit(
	input [4:0] opcode,
	output reg reg_write,
	output reg is_move,
	output reg is_mem_access,
	output reg is_imm,
	output reg [2:0] alu_function,
	output reg flags_write,
	output reg dm_write_enable,
	output reg is_jz,
	output reg is_jnz,
	output reg is_jl,
	output reg is_jg,
	output reg is_jump );
	
	always @(opcode)
	begin
		case (opcode)
			5'b00000:  // nop
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b00001: // add
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b00010: // sub
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b001;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b00011: // or
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b011;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b00100: // and
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b010;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end 
			5'b00101: // xor
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b100;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b00110: // mov
			begin
				reg_write	<= 1;
				is_move		<= 1;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b00111: // lw
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 1;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b01000: // sw
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 1;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b01001: // li
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 1;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end 
			5'b01010: // addi
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b01011: // subi
			begin
				reg_write	<= 1;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b001;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b01100: // cmp
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b001;
				flags_write 	<= 1;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b01101: // jz
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 1;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end
			5'b01110: // jnz
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 1;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 0;
			end 
			5'b01111: // jg
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 1;
				is_jump		<= 0;
			end 
			5'b10000: // jl
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 1;
				is_jg			<= 0;
				is_jump		<= 0;
			end 
			5'b10001: // jump
			begin
				reg_write	<= 0;
				is_move		<= 0;
				is_mem_access	<= 0;
				is_imm		<= 0;
				alu_function	<= 3'b000;
				flags_write 	<= 0;
				dm_write_enable<= 0;
				is_jz			<= 0;
				is_jnz		<= 0;
				is_jl			<= 0;
				is_jg			<= 0;
				is_jump		<= 1;
			end 
		endcase
	end


endmodule
