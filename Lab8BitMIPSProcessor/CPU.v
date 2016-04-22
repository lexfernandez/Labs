`timescale 1ns / 1ps

module CPU(
				input clk,
				output [7:0] PC,
				output [7:0] nextPC,
				output [15:0] Instruction,
				output RegWrite,
				output IsMove,
				output IsMemAccess,
				output IsImm,
				output [2:0] AluFunction,
				output FlagsWrite,
				output DmWriteWnable,
				output IsJz,
				output IsJnz,
				output IsJl,
				output IsJg,
				output IsJump,
				output [7:0] Rs,
				output [7:0] Rd,
				output [7:0] SelectedSecondOperand,
				output [7:0] OperationResult,
				output [7:0] ValueIfMove,
				output [7:0] DmResult,
				output [7:0] SelectedDataToWrite,
				output IsZero,
				output IsSign,
				output should_jump
				);


wire [7:0] selectedPCAddress;
wire [7:0] currentPCAddress;
assign PC = currentPCAddress;
ProgramCounter	pc_module(clk,selectedPCAddress,currentPCAddress);

//add 1 to pc address in order to fetch the next instruction
wire [7:0] nextPCAddress;
PCAdder Adder(currentPCAddress,nextPCAddress);

//get instruction based on the pc
wire [15:0] instruction;
assign Instruction = instruction;
InstructionMemory im(currentPCAddress,instruction);

wire reg_write;
assign RegWrite = reg_write;
wire is_move;
assign IsMove = is_move;
wire is_mem_access;
assign IsMemAccess = is_mem_access;
wire is_imm;
assign IsImm = is_imm;
wire [2:0] alu_function;
assign AluFunction = alu_function;
wire flags_write;
assign FlagsWrite = flags_write;
wire dm_write_enable;
assign DmWriteWnable = dm_write_enable;
wire is_jz;
assign IsJz = is_jz;
wire is_jnz;
assign IsJnz = is_jnz;
wire is_jl;
assign IsJl = is_jl;
wire is_jg;
assign IsJg = is_jg;
wire is_jump;
assign IsJump = is_jump;
ControlUnit cu(instruction[15:11],reg_write,is_move,is_mem_access,is_imm,alu_function,flags_write,dm_write_enable,is_jz,is_jnz,is_jl,is_jg,is_jump);

//decide if we will use a jump address or the pc address
 //this will be the selected address
//wire should_jump;
assign nextPC = selectedPCAddress;
Multiplexor8Bits JumpOrPcAddress(instruction[10:3],nextPCAddress,should_jump,selectedPCAddress);

wire [7:0] rs;
assign Rs = rs;
wire [7:0] rd;
assign Rd = rd;
wire [7:0] DataToWrite;
RegisterFile registers(clk,reg_write,instruction[10:9],instruction[8:7],instruction[10:9],DataToWrite,rd,rs);

wire [7:0] selectedSecondOperand;
assign SelectedSecondOperand = selectedSecondOperand;
Multiplexor8Bits InmediateOrRegister(instruction[8:1],rs,is_imm,selectedSecondOperand);

wire [7:0] operationResult;
wire is_zero,is_sign;
assign OperationResult = operationResult;
ALU registersOperation(rd,selectedSecondOperand,alu_function,operationResult,is_zero,is_sign);

wire [7:0] valueIfMove;
assign ValueIfMove=valueIfMove;
Multiplexor8Bits valueIfMoveIntruction(rs,operationResult,is_move,valueIfMove);

wire [7:0] dmResult;
assign DmResult = dmResult;
Ram dataMemory(dm_write_enable,clk,rs,rd,dmResult);


assign SelectedDataToWrite = DataToWrite;
Multiplexor8Bits MemoryOrRegisterValue(dmResult,valueIfMove,is_mem_access,DataToWrite);


FlagsRegister flags(is_zero,is_sign,clk,flags_write,IsZero,IsSign);


assign should_jump = ((IsZero & is_jz) | (~IsZero & is_jnz) | (IsSign & is_jl) |
		(~IsSign & is_jg) | is_jump);
//Jumps jumps(is_jz,is_jnz,is_jl,is_jg,is_jump,is_zero,is_sign,should_jump);
	
endmodule
