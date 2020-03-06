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
	input [1:0] npcsel,
	input [31:0] ADD4,
	input [31:0] NPC,
	input [31:0] MFPCF,
	output reg [31:0] PC0
    );
	always @(*) begin
		case(npcsel)
			`ADD4:	PC0=ADD4;
			`NPC:		PC0=NPC;
			`MFPCF:	PC0=MFPCF;
			default:	PC0=32'h00003000;
		endcase
	
	end
endmodule

module MUX_ALU(
input ALUSrc,
input [31:0]V2_E,
input [31:0]E32_E,
output [31:0]B
);

assign B=(ALUSrc==0)?V2_E:E32_E;
endmodule

module MUX_WD(
input [1:0]MemtoReg,
input [31:0]PC4_W,
input [31:0]AO_W,
input [31:0]DM_W,
output reg [31:0]WD
);
always@*begin
	case(MemtoReg)
		`AO:WD=AO_W;
		`DR:WD=DM_W;
		`PC4:WD=PC4_W;
		`PC8:WD=PC4_W+4;
	default:WD=0;
	endcase
end
endmodule 