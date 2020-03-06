`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:43 11/19/2019 
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
	//wire beq,j,jal,ALUSrc,RegWrite,MemWrite,enD,enPC,clrE;
	//wire[1:0] ALUctr,npcsel,EXTop,MemtoReg;
	//wire[2:0]MCMP1D,MCMP2D,MALUBE,MWDM,MALUAE;
	//wire[4:0] A3_W;
	//wire [31:0]IR;
	wire [31:0]IR_D;
	wire [3:0]MCMP1D,MCMP2D,MALUAE,MALUBE,MWDM;
	wire [4:0]A3;
	wire enD,enPC,clrE,stall_md;
	
	datapath dp(
		.clk(clk),
		.reset(reset),
		.enD(enD),
		.enPC(enPC),
		.clrE(clrE),
		.stall_md(stall_md),
		.A3(A3),
		.IR_D(IR_D),
		.MCMP1D(MCMP1D),
		.MCMP2D(MCMP2D),
		.MALUAE(MALUAE),
		.MALUBE(MALUBE),
		.MWDM(MWDM)
		);
		
	control ctrl(
		.clk(clk),
		.reset(reset),
		.IR_D(IR_D),
		.A3_W(A3),
		.enD(enD),
		.enPC(enPC),
		.clrE(clrE),
		.stall_md(stall_md),
		.MCMP1D(MCMP1D),
		.MCMP2D(MCMP2D),
		.MALUAE(MALUAE),
		.MALUBE(MALUBE),
		.MWDM(MWDM)
		);
endmodule 
/*
	datapath dp(
		.clk(clk),
		.reset(reset),
		.beq(beq),
		.j(j),
		.jal(jal),
		.A3_W(A3_W),
		.ALUSrc(ALUSrc),
		.MemtoReg(MemtoReg),
		.npcsel(npcsel),
		.RegWrite(RegWrite),
		.MemWrite(MemWrite),
		.EXTop(EXTop),
		.ALUctr(ALUctr),
		.MCMP1D(MCMP1D),
		.MCMP2D(MCMP2D),
		.MALUBE(MALUBE),
		.MWDM(MWDM),
		.MALUAE(MALUAE),
		.enD(enD),
		.enPC(enPC),
		.clrE(clrE),
		.IR_D(IR)
		);
	
	control ctrl(
		.clk(clk),
		.reset(reset),
		.beq(beq),
		.j(j),
		.jal(jal),
		.A3_W(A3_W),
		.ALUSrc_E(ALUSrc),
		.MemtoReg_W(MemtoReg),
		.npcsel(npcsel),
		.RegWrite_W(RegWrite),
		.MemWrite_M(MemWrite),
		.EXTop(EXTop),
		.ALUctr_E(ALUctr),
		.MFCMP1D(MCMP1D),
		.MFCMP2D(MCMP2D),
		.MFALUBE(MALUBE),
		.MFWDM(MWDM),
		.MFALUAE(MALUAE),
		.enD(enD),
		.enPC(enPC),
		.clrE(clrE),
		.IR(IR)
		);
	
	
	
	//数据通路与控制器相连接
	//datapath为controller提供D级的IR,controller为datapath提供控制信号、W级的A3和暂停信号

endmodule
*/