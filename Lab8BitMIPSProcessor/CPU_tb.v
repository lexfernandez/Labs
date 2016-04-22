`timescale 1ns / 1ps


module CPU_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] PC;
	wire [7:0] nextPC;
	wire [15:0] Instruction;
	wire RegWrite;
	wire IsMove;
	wire IsMemAccess;
	wire IsImm;
	wire [2:0] AluFunction;
	wire FlagsWrite;
	wire DmWriteWnable;
	wire IsJz;
	wire IsJnz;
	wire IsJl;
	wire IsJg;
	wire IsJump;
	wire [7:0] Rs;
	wire [7:0] Rd;
	wire [7:0] SelectedSecondOperand;
	wire [7:0] OperationResult;
	wire [7:0] ValueIfMove;
	wire [7:0] DmResult;
	wire [7:0] SelectedDataToWrite;
	wire IsZero;
	wire IsSign;
	wire ShouldJump;

	// Instantiate the Unit Under Test (UUT)
	CPU singleCycleProcessor (
		clk,
		PC,
		nextPC,
		Instruction,
		RegWrite,
		IsMove,
		IsMemAccess,
		IsImm,
		AluFunction,
		FlagsWrite,
		DmWriteWnable,
		IsJz,
		IsJnz,
		IsJl,
		IsJg,
		IsJump,
		Rs,
		Rd,
		SelectedSecondOperand,
		OperationResult,
		ValueIfMove,
		DmResult,
		SelectedDataToWrite,
		IsZero,
		IsSign,
		ShouldJump
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here

	end
	
	always
		#50  clk =  ! clk;
      
endmodule

