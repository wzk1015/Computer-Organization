`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:26 11/19/2019 
// Design Name: 
// Module Name:    STOP 
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
`include "define.v"

module STOP_control(		//∂‘’’◊≈≤ﬂ¬‘æÿ’Û–¥
	input Tuse_rs0,
	input Tuse_rs1,
	input Tuse_rt0,
	input Tuse_rt1,
	input Tuse_rt2,
	input [31:0]IR,
	input [4:0]A3_E,
	input [4:0]A3_M,
	input [2:0]res_E,
	input [2:0]res_M,
	output reg stall
	);
	reg stall_rs0_e1,stall_rs0_e2,stall_rs1_e2,stall_rs0_m1,stall_rs;
	reg stall_rt0_e1,stall_rt0_e2,stall_rt1_e2,stall_rt0_m1,stall_rt;
	always@*begin
		stall_rs0_e1 = Tuse_rs0 && (res_E==`ALU || res_E==`HIout || res_E==`LOout) && (IR[25:21]==A3_E);
		stall_rs0_e2 = Tuse_rs0 && (res_E==`DM) && (IR[25:21]==A3_E);
		stall_rs1_e2 = Tuse_rs1 && (res_E==`DM) && (IR[25:21]==A3_E);
		stall_rs0_m1 = Tuse_rs0 && (res_M==`DM) && (IR[25:21]==A3_M);
		stall_rs = stall_rs0_e1 || stall_rs0_e2 || stall_rs1_e2 || stall_rs0_m1;
		
		stall_rt0_e1 = Tuse_rt0 && (res_E==`ALU || res_E==`HIout || res_E==`LOout) && (IR[20:16]==A3_E);
		stall_rt0_e2 = Tuse_rt0 && (res_E==`DM) && (IR[20:16]==A3_E);
		stall_rt1_e2 = Tuse_rt1 && (res_E==`DM) && (IR[20:16]==A3_E);
		stall_rt0_m1 = Tuse_rt0 && (res_M==`DM) && (IR[20:16]==A3_M);
		stall_rt = stall_rt0_e1 || stall_rt0_e2 || stall_rt1_e2 || stall_rt0_m1;	
		
		stall = stall_rs||stall_rt;
	end
	
endmodule


module STOP(
	input stall_data,
	input clk,
	output reg enPC,
	output reg enD,
	output reg clrE
		 );

	initial begin
		enPC=1;
		enD=1;
		clrE=0;
	end
	always @(*) begin
		enPC=(stall_data)?0:1;
		enD=(stall_data)?0:1;
		clrE=stall_data;
	end 
endmodule

