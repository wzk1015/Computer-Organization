`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:15 11/17/2019 
// Design Name: 
// Module Name:    D 
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
module RF(
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    input RegWrite_W,
    input clk,
    input reset,
	 input [31:0] PC4,
    input [31:0] V1,
    input [31:0] V2
    );
	reg [31:0] register[0:31];
	wire [31:0] PC;
	integer i;
	assign PC=PC4-4;
	assign V1=(A1==A3&&RegWrite_W&&A3!=0)?WD:register[A1];
	assign V2=(A2==A3&&RegWrite_W&&A3!=0)?WD:register[A2];
	
	initial begin
		for(i=0;i<32;i=i+1)
			register[i]=0;
	end
	
	always @(posedge clk) begin
		if (reset) begin
			for (i=0;i<32;i=i+1)
				register[i]=0;
		end
		else begin
			if (RegWrite_W && (A3!=0)) begin
				register[A3]=WD;
				$display("%d@%h: $%d <= %h",$time,PC,A3,WD);
				///$display("@%h: $%d <= %h",PC,A3,WD);
			end
		end
	end
endmodule

module EXT(
	input [31:0] IR_D,
	output reg [31:0] extout
	);
	wire [1:0] EXTop;
	wire [15:0] imm;
	assign imm=IR_D[15:0];
	decoder code_EXT(.IR(IR_D),.EXTop(EXTop));
	always@*begin
		case(EXTop)
			`zero_ext:extout={16'b0,imm[15:0]};
			`sign_ext:extout={{16{imm[15]}},imm[15:0]};
			`high_ext:extout={imm[15:0],16'b0};
			default:extout=0;
		endcase
	end
endmodule 

module CMP(
	input [31:0] IR_D,
	input [31:0] D1,
	input [31:0] D2,
	output zero
	);
	decoder code_CMP(.IR(IR_D),.beq(beq),.bne(bne),.bltz(bltz),.blez(blez),.bgtz(bgtz),.bgez(bgez));
	
	assign zero = 	(beq && (D1==D2) )?1:
						(bne && (D1!=D2) )?1:
						(bltz&& ($signed(D1)<0) )?1:
						(blez&& ($signed(D1)<=0) )?1:
						(bgtz&& ($signed(D1)>0) )?1:
						(bgez&& ($signed(D1)>=0) )?1:
						0;
						
	
endmodule 

module NPC(
	input [31:0] IR_D,
	input [31:0] PC4,	
	input zero,
	output reg [31:0] NPC
	);
	wire beq,isj,isb;
	wire [25:0]imm;
	decoder code_NPC(.IR(IR_D),.isj(isj),.isb(isb));

	assign imm=IR_D[25:0];
	always@*begin
	if(isj)begin
		NPC={PC4[31:28],imm[25:0],2'b0};
	end
	else if(isb)begin
		if(zero)
		NPC=PC4+{{14{imm[15]}},imm[15:0],2'b0};
		else
		NPC=PC4+4;
	end
	else NPC=32'h00003000;
	
end
	
	
	
	
	
endmodule 