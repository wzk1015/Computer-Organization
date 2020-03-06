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
module AT(
	input [31:0]IR,
	output reg [4:0]A1,
	output reg [4:0]A2,
	output reg [4:0]A3,
	output reg Tuse_rs0,
	output reg Tuse_rs1,
	output reg Tuse_rt0,
	output reg Tuse_rt1,
	output reg Tuse_rt2,
	output reg [1:0]res_D
    );
	reg addu,subu,ori,lui,beq,sw,lw,jr,j,jal;
	always@*begin 
			 addu=(IR[31:26]==6'b000000&&IR[5:0]==6'b100001)?1:0;
			 subu=(IR[31:26]==6'b000000&&IR[5:0]==6'b100011)?1:0;
			 ori=(IR[31:26]==6'b001101)?1:0;
			 lui=(IR[31:26]==6'b001111)?1:0;
			 beq=(IR[31:26]==6'b000100)?1:0;
			 sw=(IR[31:26]==6'b101011)?1:0;
			 lw=(IR[31:26]==6'b100011)?1:0;
			 j=(IR[31:26]==6'b000010)?1:0;
			 jal=(IR[31:26]==6'b000011)?1:0;
			 jr=(IR[31:26]==6'b000000&&IR[5:0]==6'b001000)?1:0;
			 
			 A1=IR[25:21];
			 A2=IR[20:16];
			 A3=(addu||subu)?IR[15:11]:
				 (ori||lw||lui)?IR[20:16]:
				 (jal)?5'h1f:	//31号寄存器
				 5'b0;
			
			 Tuse_rs0=beq||jr;	//rs=0的指令
			 Tuse_rs1=addu||subu||ori||lui||sw||lw;	//rs=1的指令
			 Tuse_rt0=beq;
			 Tuse_rt1=addu||subu||lui;
			 Tuse_rt2=sw;
			 
			 res_D=(addu||subu||ori||lui)?`ALU:			//指令的对应部件（等价于Tnew初始值）
			       (lw)?`DM:
					 (jal)?`PC:
					 `NW;
	end
endmodule 


module AT_E(
	input [1:0]res,
	input [4:0]A3,
	input [4:0]A2,
	input [4:0]A1,
	input clk,
	input reset,
	input clr,
	output reg [4:0]A1_E,
	output reg [4:0]A2_E,
	output reg [4:0]A3_E,
	output reg [1:0]res_E
    );
	always@(posedge clk)begin
		if(reset||clr)begin
			A1_E=0;
			A2_E=0;
			A3_E=0;
			res_E=0;
		end
		else begin
			A1_E=A1;
			A2_E=A2;
			A3_E=A3;
			res_E=res;
		end
	end
endmodule 

module AT_M(
	input [1:0]res_E,
	input [4:0]A3_E,
	input [4:0]A2_E,
	input clk,
	input reset,
	output reg [4:0]A2_M,
	output reg [4:0]A3_M,
	output reg [1:0]res_M
    );
	always@(posedge clk)begin
		if(reset)begin
			A2_M=0;
			A3_M=0;
			res_M=0;
		end
		else begin
			A2_M=A2_E;
			A3_M=A3_E;
			res_M=res_E;
		end
	end
endmodule 

module AT_W(
	input [1:0]res_M,
	input [4:0]A3_M,
	input clk,
	input reset,
	output reg [4:0]A3_W,
	output reg [1:0]res_W
    );
	always@(posedge clk)begin
		if(reset)begin
			A3_W=0;
			res_W=0;
		end
		else begin
			A3_W=A3_M;
			res_W=res_M;
		end
	end
endmodule 

module ATtotal(
	input clk,
	input reset,
	input [31:0]IR,
	input enD,
	input clrE,
	output [4:0]A1_E,
	output [4:0]A1_D,
	output [4:0]A2_D,
	output [4:0]A2_E,
	output [4:0]A2_M,
	output [4:0]A3_M,
	output [4:0]A3_W,
	output [1:0]res_M,
	output [1:0]res_W,
	output [4:0]A3_E,
	output [1:0]res_E,
	output Tuse_rs0,
	output Tuse_rs1,
	output Tuse_rt0,
	output Tuse_rt1,
	output Tuse_rt2
    );
	wire [4:0]A3_D;
	wire [1:0]res_D;

AT at(
	.IR(IR),
	.A1(A1_D),
	.A2(A2_D),
	.A3(A3_D),
	.Tuse_rs0(Tuse_rs0),
	.Tuse_rs1(Tuse_rs1),
	.Tuse_rt0(Tuse_rt0),
	.Tuse_rt1(Tuse_rt1),
	.Tuse_rt2(Tuse_rt2),
	.res_D(res_D)
	);

AT_E at_e(
	.res(res_D),
	.A1(A1_D),
	.A2(A2_D),
	.A3(A3_D),
	.clk(clk),
	.reset(reset),
	.clr(clrE),
	.A1_E(A1_E),
	.A2_E(A2_E),
	.A3_E(A3_E),
	.res_E(res_E)
	);
	
AT_M at_m(
	.res_E(res_E),
	.A2_E(A2_E),
	.A3_E(A3_E),
	.clk(clk),
	.reset(reset),
	.A2_M(A2_M),
	.A3_M(A3_M),
	.res_M(res_M)
	);
	
AT_W at_w(
	.res_M(res_M),
	.A3_M(A3_M),
	.clk(clk),
	.reset(reset),
	.A3_W(A3_W),
	.res_W(res_W)
	);
	
endmodule
