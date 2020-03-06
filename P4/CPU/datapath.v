`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:58 11/08/2019 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
		input [1:0]RegDst,
		input ALUSrc,
		input [1:0]MemtoReg,
		input MemWrite,
		input RegWrite,
		input [1:0]npcsel,
		input [1:0]EXTop,
		input [1:0]ALUctr,
		input clk,
		input reset,
		output [31:0]instr
    );
		
		wire zero;
		wire [4:0]rtd;
		wire [25:0]imm;
		wire [31:0]reg31,PC4,busW,extout,ALUB,ALUout,busA,busB,dataout;
		
	IFU ifu(
	.npcsel(npcsel),
	.zero(zero),
	.imm(instr[25:0]),
	.clk(clk),
	.reset(reset),
	.rsvalue(busA),
	.instr(instr),
	.PC4(PC4)
	);
	
	GRF grf(
	.rs(instr[25:21]),
	.rt(instr[20:16]),
	.rtd(rtd),
	.RegWrite(RegWrite),
	.busW(busW),
	.clk(clk),
	.reset(reset),
	.PC4(PC4),
	.busA(busA),
	.busB(busB),
	.reg31(reg31)
	 );
	
	ALU alu(
	.ALUA(busA),
	.ALUB(ALUB),
	.ALUctr(ALUctr),
	.ALUout(ALUout),
	.zero(zero)
	);
	
	DM dm(
	.addr(ALUout),
	.data(busB),
	.reset(reset),
	.clk(clk),
	.MemWrite(MemWrite),
	.PC4(PC4),
	.dataout(dataout)
	);
	
	EXT ext(
	.imm(instr[15:0]),
	.EXTop(EXTop),
	.extout(extout)
	);
	
	mux_ALU mux_alu(
	.busB(busB),
	.immext(extout),
	.ALUSrc(ALUSrc),
	.ALUB(ALUB)
	);
	
	mux_GRF mux_grf(
	.rt(instr[20:16]),
	.rd(instr[15:11]),
	.RegDst(RegDst),
	.rtd(rtd)
	);
	
	mux_WD mux_wd(
	.ALUout(ALUout),
	.dataout(dataout),
	.PC4(PC4),
	.MemtoReg(MemtoReg),
	.busW(busW)
	);

endmodule
