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
	input [31:0]IR_D,
	input clk,
	input reset,
	input stall_md,
	output enPC,
	output enD,
	output clrE,
	output [4:0]A3_W,
	output [3:0]MALUBE,
	output [3:0]MCMP1D,
	output [3:0]MCMP2D,
	output [3:0]MWDM,
	output [3:0]MALUAE
    );


wire [4:0]A1_E,A1_D,A2_E,A2_D,A2_M,A3_M,A3_E;
wire [2:0]res_M,res_W,res_E;
wire Tuse_rs0,Tuse_rs1,Tuse_rt0,Tuse_rt1,Tuse_rt2,stall;

ATtotal attotal(
	.stall_md(stall_md),
	.IR_D(IR_D),
	.clk(clk),
	.reset(reset),
	.clrE(clrE),
	.A2_E(A2_E),
	.A1_E(A1_E),
	.A1_D(A1_D),
	.A2_D(A2_D),
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
	
FORWARD_controller forward_control(
	.A1_D(A1_D),
	.A2_D(A2_D),
	.A1_E(A1_E),
	.A2_E(A2_E),
	.A2_M(A2_M),
	.A3_M(A3_M),
	.A3_W(A3_W),
	.res_W(res_W),
	.res_M(res_M),
	.MFCMP1D(MCMP1D),
	.MFCMP2D(MCMP2D),
	.MFALUAE(MALUAE),
	.MFALUBE(MALUBE),
	.MFWDM(MWDM)
	);
	
STOP_control stop_control(
	.IR(IR_D),
	.res_E(res_E),
	.res_M(res_M),
	.A3_E(A3_E),
	.A3_M(A3_M),
	.stall(stall),
	.Tuse_rs0(Tuse_rs0),
	.Tuse_rs1(Tuse_rs1),
	.Tuse_rt0(Tuse_rt0),
	.Tuse_rt1(Tuse_rt1),
	.Tuse_rt2(Tuse_rt2)
	);
STOP stop(
	.clk(clk),
	.stall_data(stall),
	.enPC(enPC),
	.enD(enD),
	.clrE(clrE)
	);

endmodule
