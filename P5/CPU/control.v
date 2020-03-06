`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:47 11/19/2019 
// Design Name: 
// Module Name:    control 
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
module control(
	input [31:0]IR,
	input clk,
	input reset,
	output beq,
	output j,
	output jal,
	output [1:0]npcsel,
	output [1:0]EXTop,
	output ALUSrc_E,
	output [1:0]ALUctr_E,
	output MemWrite_M,
	output [1:0]MemtoReg_W,
	output RegWrite_W,
	output enPC,
	output enD,
	output clrE,
	output [4:0]A3_W,
	output [2:0]MFALUBE,
	output [2:0]MFCMP1D,
	output [2:0]MFCMP2D,
	output [2:0]MFWDM,
	output [2:0]MFALUAE
    );

wire Tuse_rs0,Tuse_rs1,Tuse_rt0,Tuse_rt1,Tuse_rt2,stall;
wire[4:0] A1_D,A2_D,A2_E,A2_M,A3_M,A3_E,A1_E;
wire[1:0]res_W,res_M,res_E;

MAINtotal maintotal(
	.IR(IR),
	.clk(clk),
	.reset(reset),
	.enD(enD),
	.enPC(enPC),
	.clrE(clrE),
	.beq(beq),
	.j(j),
	.jal(jal),
	.npcsel(npcsel),
	.EXTop(EXTop),
	.ALUSrc_E(ALUSrc_E),
	.ALUctr_E(ALUctr_E),
	.MemWrite_M(MemWrite_M),
	.MemtoReg_W(MemtoReg_W),
	.RegWrite_W(RegWrite_W)
	);

FORWARD_controller forward_controller(
	.A1_E(A1_E),
	.A1_D(A1_D),
	.A2_D(A2_D),
	.A2_E(A2_E),
	.A2_M(A2_M),
	.A3_W(A3_W),
	.A3_M(A3_M),
	.res_W(res_W),
	.res_M(res_M),
	.MFALUBE(MFALUBE),
	.MFCMP1D(MFCMP1D),
	.MFCMP2D(MFCMP2D),
	.MFWDM(MFWDM),
	.MFALUAE(MFALUAE)
	);

ATtotal attotal(
	.clk(clk),
	.reset(reset),
	.IR(IR),
	.enD(enD),
	.clrE(clrE),
	.A1_E(A1_E),
	.A1_D(A1_D),
	.A2_D(A2_D),
	.A2_E(A2_E),
	.A2_M(A2_M),
	.A3_M(A3_M),
	.A3_W(A3_W),
	.res_M(res_M),
	.res_W(res_W),
	.A3_E(A3_E),
	.res_E(res_E),
	.Tuse_rs0(Tuse_rs0),
	.Tuse_rs1(Tuse_rs1),
	.Tuse_rt0(Tuse_rt0),
	.Tuse_rt1(Tuse_rt1),
	.Tuse_rt2(Tuse_rt2)
	);

STOP_control stop_controller(
	.IR(IR),
	.Tuse_rs0(Tuse_rs0),
	.Tuse_rs1(Tuse_rs1),
	.Tuse_rt0(Tuse_rt0),
	.Tuse_rt1(Tuse_rt1),
	.Tuse_rt2(Tuse_rt2),
	.res_E(res_E),
	.res_M(res_M),
	.A3_E(A3_E),
	.A3_M(A3_M),
	.stall(stall)
	);

STOP stop(
	.stall(stall),
	.clk(clk),
	.enPC(enPC),
	.enD(enD),
	.clrE(clrE)
	);

endmodule
