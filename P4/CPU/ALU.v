`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:12 11/08/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
		input [31:0] ALUA,
		input [31:0] ALUB,
		input [1:0] ALUctr,
		output reg [31:0] ALUout,
		output reg zero
    );

	
	always @(*) begin
		zero=(ALUA==ALUB)?1:0;
		case(ALUctr)
		2'b00: ALUout=ALUA+ALUB;
		2'b01: ALUout=ALUA-ALUB;
		2'b10: ALUout=ALUA|ALUB;
		2'b11: ALUout=0;
		default: ALUout=0;
		endcase
	end
	
	
	

endmodule
