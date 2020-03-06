`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:02 11/08/2019 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	
	wire ALUSrc,MemWrite,RegWrite;
	wire [1:0] RegDst,MemtoReg,npcsel,EXTop,ALUctr;
	wire [31:0] instr;
	
	datapath dp(
		.RegDst(RegDst),
		.ALUSrc(ALUSrc),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.RegWrite(RegWrite),
		.npcsel(npcsel),
		.EXTop(EXTop),
		.ALUctr(ALUctr),
		.clk(clk),
		.reset(reset),
		.instr(instr)
    );
	 
	 control ctrl(
	 	.op(instr[31:26]),
		.func(instr[5:0]),
		.RegDst(RegDst),
		.ALUSrc(ALUSrc),
		.MemtoReg(MemtoReg),
		.RegWrite(RegWrite),
		.MemWrite(MemWrite),
		.npcsel(npcsel),
		.EXTop(EXTop),
		.ALUctr(ALUctr)
	 );

endmodule
