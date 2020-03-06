`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:08 11/17/2019 
// Design Name: 
// Module Name:    MUX_PC 
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

module MUX_PC(
	input [31:0] IR_D,
	input [31:0] PC4,
	input [31:0] NPC,
	input [31:0] MFPCF,
	output reg [31:0] PC0
    );
	wire [1:0] npcsel;
	decoder code_MUX_PC(.IR(IR_D),.npcsel(npcsel));    //根据npcsel的值选择相应PC值
	always @(*) begin
		case(npcsel)
			`ADD4:	PC0=PC4;
			`NPC:		PC0=NPC;
			`MFPCF:	PC0=MFPCF;
			default:	PC0=32'h00003000;
		endcase
	
	end
endmodule

module MUX_ALUA(
input [31:0]IR_E,
input [31:0]V1_E,
output [31:0]A
);
wire ALUSrcA;
decoder code_MUX_ALUA(.IR(IR_E),.ALUSrcA(ALUSrcA));
assign A=(ALUSrcA==0)?V1_E:{27'b0,IR_E[10:6]};
endmodule

module MUX_ALUB(
input [31:0]IR_E,
input [31:0]V2_E,
input [31:0]E32_E,
output [31:0]B
);
wire ALUSrcB;
decoder code_MUX_ALUB(.IR(IR_E),.ALUSrcB(ALUSrcB));
assign B=(ALUSrcB==0)?V2_E:E32_E;
endmodule

module MUX_WD(
input [31:0]IR_W,
input [31:0]PC4_W,
input [31:0]AO_W,
input [31:0]DM_W,
input [31:0]HI_W,
input [31:0]LO_W,
output reg [31:0]WD
);
wire [2:0] MemtoReg;
decoder code_WD(.IR(IR_W),.MemtoReg(MemtoReg));

always@*begin
	case(MemtoReg)
		`AO:WD=AO_W;
		`DR:WD=DM_W;
		`PC8:WD=PC4_W+4;
		`HI:WD=HI_W;
		`LO:WD=LO_W;
	default:WD=0;
	endcase
end 
endmodule 