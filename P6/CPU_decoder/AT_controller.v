`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:06 11/19/2019 
// Design Name: 
// Module Name:    AT 
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
module AT_E(
	input [2:0]res_D,
	input [4:0]A3_D,
	input [4:0]A2_D,
	input [4:0]A1_D,
	input clk,
	input reset,
	input clr,
	input stall_md,
	output reg [4:0]A1_E,
	output reg [4:0]A2_E,
	output reg [4:0]A3_E,
	output reg [2:0]res_E
    );
	always@(posedge clk)begin
		if(reset||clr||stall_md)begin
			A1_E=0;
			A2_E=0;
			A3_E=0;
			res_E=0;
		end
		else begin
			A1_E=A1_D;
			A2_E=A2_D;
			A3_E=A3_D;
			res_E=res_D;
		end
	end
endmodule 

module AT_M(
	input [2:0]res_E,
	input [4:0]A3_E,
	input [4:0]A2_E,
	input [4:0]A1_E,
	input clk,
	input reset,
	output reg [4:0]A1_M,
	output reg [4:0]A2_M,
	output reg [4:0]A3_M,
	output reg [2:0]res_M
    );
	always@(posedge clk)begin
		if(reset)begin
			A1_M=0;
			A2_M=0;
			A3_M=0;
			res_M=0;
		end
		else begin
			A1_M=A1_E;
			A2_M=A2_E;
			A3_M=A3_E;
			res_M=res_E;
		end
	end
endmodule 

module AT_W(
	input [2:0]res_M,
	input [4:0]A1_M,
	input [4:0]A2_M,
	input [4:0]A3_M,
	input clk,
	input reset,
	output reg [4:0]A1_W,
	output reg [4:0]A2_W,
	output reg [4:0]A3_W,
	output reg [2:0]res_W
    );
	always@(posedge clk)begin
		if(reset)begin
			A1_W=0;
			A2_W=0;
			A3_W=0;
			res_W=0;
		end
		else begin
			A1_W=A1_M;
			A2_W=A2_M;
			A3_W=A3_M;
			res_W=res_M;
		end
	end
endmodule 

module ATtotal(
	input [31:0]IR_D,
	input clk,
	input reset,
	input clrE,
	input stall_md,
	output [4:0]A2_E,
	output [4:0]A1_E,
	output [4:0]A1_D,
	output [4:0]A2_D,
	output [4:0]A2_M,
	output [4:0]A3_M,
	output [4:0]A3_E,
	output [2:0]res_E,
	output [4:0]A3_W,
	output [2:0]res_M,
	output [2:0]res_W,
	output Tuse_rs0,
	output Tuse_rs1,
	output Tuse_rt0,
	output Tuse_rt1,
	output Tuse_rt2
    );
	assign A1_D=IR_D[25:21];
	assign A2_D=IR_D[20:16];
	wire [2:0]res_D;
	wire[4:0]A3_D,A1_M,A1_W,A2_W;
	decoder	codeAT(.IR(IR_D),.res(res_D),.A3(A3_D),
				.Tuse_rs0(Tuse_rs0),.Tuse_rs1(Tuse_rs1),
				.Tuse_rt0(Tuse_rt0),.Tuse_rt1(Tuse_rt1),.Tuse_rt2(Tuse_rt2));
	
	AT_E at_e(
		.stall_md(stall_md),
		.A1_D(IR_D[25:21]),
		.A2_D(IR_D[20:16]),
		.A3_D(A3_D),
		.res_D(res_D),
		.clk(clk),
		.reset(reset),
		.clr(clrE),
		.A1_E(A1_E),
		.A2_E(A2_E),
		.A3_E(A3_E),
		.res_E(res_E)
		);
		
	AT_M at_m(
		.A1_E(A1_E),
		.A2_E(A2_E),
		.A3_E(A3_E),
		.res_E(res_E),
		.clk(clk),
		.reset(reset),
		.A1_M(A1_M),
		.A2_M(A2_M),
		.A3_M(A3_M),
		.res_M(res_M)
		);
		
	AT_W at_w(
		.A1_M(A1_M),
		.A2_M(A2_M),
		.A3_M(A3_M),
		.res_M(res_M),
		.clk(clk),
		.reset(reset),
		.A1_W(A1_W),
		.A2_W(A2_W),
		.A3_W(A3_W),
		.res_W(res_W)
		);

endmodule

