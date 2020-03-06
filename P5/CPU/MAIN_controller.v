`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:55 11/19/2019 
// Design Name: 
// Module Name:    MAIN_controller 
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

module MAIN_D(
	input [31:0]IR,
	output reg ALUSrc,
	output reg [1:0]MemtoReg,
	output reg RegWrite,
	output reg MemWrite,
	output reg [1:0]npcsel,
	output reg [1:0]EXTop,
	output reg [1:0]ALUctr,
	output reg beq,
	output reg j,
	output reg jal
    );
	reg addu,subu,ori,lui,sw,lw,jr;
	always@*begin
		 addu = (IR[31:26]==6'b000000&&IR[5:0]==6'b100001)?1:0;
		 subu = (IR[31:26]==6'b000000&&IR[5:0]==6'b100011)?1:0;
		 ori = (IR[31:26]==6'b001101)?1:0;
		 lui = (IR[31:26]==6'b001111)?1:0;
		 beq = (IR[31:26]==6'b000100)?1:0;
		 sw = (IR[31:26]==6'b101011)?1:0;
		 lw = (IR[31:26]==6'b100011)?1:0;
		 j = (IR[31:26]==6'b000010)?1:0;
		 jal = (IR[31:26]==6'b000011)?1:0;
		 jr = (IR[31:26]==6'b000000&&IR[5:0]==6'b001000)?1:0;
	 
		npcsel= (addu+subu+ori+lui+sw+lw)?`ADD4:
				  (beq+j+jal)?`NPC:
				  (jr)?`MFPCF:0;
		ALUSrc= (ori+lui+sw+lw)?1:0;
		MemtoReg= (addu+subu+ori+lui)?`AO:
					 (lw)?`DR:
					 (jal)?`PC8:0;
		EXTop= (lw+sw)?`sign_ext:
				 (ori)?`zero_ext:
				 (lui)?`high_ext:0;
		ALUctr= (addu+lui+sw+lw)?`add:
				  (subu)?`sub:
				  (ori)?`ori:0;
		MemWrite= (sw)?1:0;
		RegWrite= (addu+subu+ori+lui+lw+jal)?1:0;
	end

endmodule


module MAIN_E(
	input ALUSrc,
	input RegWrite,
	input MemWrite,
	input [1:0]ALUctr,
	input [1:0]MemtoReg,
	input clk,
	input reset,
	input clr,
	output reg RegWrite_E,
	output reg MemWrite_E,
	output reg ALUSrc_E,
	output reg [1:0]MemtoReg_E,
	output reg [1:0]ALUctr_E
		 );
	always@(posedge clk)begin
		if(clr||reset)begin
			ALUSrc_E=0;
			MemtoReg_E=0;
			RegWrite_E=0;
			MemWrite_E=0;
			ALUctr_E=0;
		end
		else begin
			ALUSrc_E=ALUSrc;
			MemtoReg_E=MemtoReg;
			RegWrite_E=RegWrite;
			MemWrite_E=MemWrite;
			ALUctr_E=ALUctr;
		end
	end
endmodule

module MAIN_M(
	input [1:0]MemtoReg,
	input RegWrite,
	input MemWrite,
	input clk,
	input reset,
	output reg [1:0]MemtoReg_M,
	output reg RegWrite_M,
	output reg MemWrite_M
		 );
	always@(posedge clk)begin
		if(reset)begin
			MemtoReg_M=0;
			RegWrite_M=0;
			MemWrite_M=0;
		end
		else begin
			MemtoReg_M=MemtoReg;
			RegWrite_M=RegWrite;
			MemWrite_M=MemWrite;
		end
	end
endmodule

module MAIN_W(
	input [1:0]MemtoReg,
	input RegWrite,
	input clk,
	input reset,
	output reg [1:0]MemtoReg_W,
	output reg RegWrite_W
		 );
	always@(posedge clk)begin
		if(reset)begin
			MemtoReg_W=0;
			RegWrite_W=0;
		end
		else begin
			MemtoReg_W=MemtoReg;
			RegWrite_W=RegWrite;
		end
	end
endmodule

module MAINtotal(
	input [31:0]IR,
	input clk,
	input reset,
	input enD,
	input enPC,
	input clrE,
	output beq,
	output j,
	output jal,
	output [1:0]npcsel,
	output [1:0]EXTop,
	output ALUSrc_E,
	output [1:0]ALUctr_E,
	output MemWrite_M,
	output [1:0]MemtoReg_W,
	output RegWrite_W
    );
	wire [1:0] ALUctr,MemtoReg,MemtoReg_E,MemtoReg_M;
	wire ALUSrc,RegWrite,MemWrite,RegWrite_E,MemWrite_E;
	
	MAIN_D main_d(
	.IR(IR),
	.ALUSrc(ALUSrc),
	.MemtoReg(MemtoReg),
	.RegWrite(RegWrite),
	.MemWrite(MemWrite),
	.npcsel(npcsel),
	.EXTop(EXTop),
	.ALUctr(ALUctr),
	.beq(beq),
	.j(j),
	.jal(jal)
	);
	
	MAIN_E main_e(
	.ALUSrc(ALUSrc),
	.MemtoReg(MemtoReg),
	.RegWrite(RegWrite),
	.MemWrite(MemWrite),
	.ALUctr(ALUctr),
	.clk(clk),
	.reset(reset),
	.clr(clrE),
	.ALUSrc_E(ALUSrc_E),
	.MemtoReg_E(MemtoReg_E),
	.RegWrite_E(RegWrite_E),
	.MemWrite_E(MemWrite_E),
	.ALUctr_E(ALUctr_E)
	);
	
	MAIN_M main_m(
	.MemtoReg(MemtoReg_E),
	.RegWrite(RegWrite_E),
	.MemWrite(MemWrite_E),
	.clk(clk),
	.reset(reset),
	.MemtoReg_M(MemtoReg_M),
	.RegWrite_M(RegWrite_M),
	.MemWrite_M(MemWrite_M)
	);
	
	MAIN_W main_w(
	.MemtoReg(MemtoReg_M),
	.RegWrite(RegWrite_M),
	.clk(clk),
	.reset(reset),
	.MemtoReg_W(MemtoReg_W),
	.RegWrite_W(RegWrite_W)
	);
endmodule 