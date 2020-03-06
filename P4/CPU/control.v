`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:42 11/08/2019 
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
		input [5:0] op,
		input [5:0] func,
		output reg [1:0] RegDst,
		output reg ALUSrc,
		output reg [1:0] MemtoReg,
		output reg RegWrite,
		output reg MemWrite,
		output reg [1:0] npcsel,
		output reg [1:0] EXTop,
		output reg [1:0] ALUctr
    );
	
	reg addu,subu,ori,lw,sw,beq,lui,jal,jr,nop;
	
	initial begin
		addu <= 0;
		subu <= 0;
		ori <= 0;
		lw <= 0;
		sw <= 0;
		beq <= 0;
		lui <= 0;
		jal <= 0;
		jr <= 0;
		nop <= 0;
	end
	
	always @(*) begin
		addu=(op==6'b000000 && func==6'b100001)?1:0;
		subu=(op==6'b000000 && func==6'b100011)?1:0;
		ori=(op==6'b001101)?1:0;
		lw=(op==6'b100011)?1:0;
		sw=(op==6'b101011)?1:0;
		beq=(op==6'b000100)?1:0;
		lui=(op==6'b001111)?1:0;
		jal=(op==6'b000011)?1:0;
		jr=(op==6'b000000 && func==6'b001000)?1:0;
		nop=(op==6'b000000 && func==6'b000000)?1:0;
		
		RegDst[0]=addu||subu;
		RegDst[1]=jal;
		ALUSrc=ori||lw||sw||lui;
		MemtoReg[0]=lw;
		MemtoReg[1]=jal;
		RegWrite=addu||subu||ori||lw||lui||jal;
		npcsel[0]=beq||jr;
		npcsel[1]=jal||jr;
		EXTop[0]=lw||sw;
		EXTop[1]=lui;
		ALUctr[0]=subu||beq;
		ALUctr[1]=ori;
		MemWrite=sw;
		
	end

endmodule
