`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:21 11/17/2019 
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

`include "define.v"

module ALU(
    input [31:0] A,
    input [31:0] B,
    input [1:0] ALUctr,
    output reg [31:0] ALUout
    );
	always @(*) begin
		case(ALUctr)
			`add: ALUout=A+B;
			`sub: ALUout=A-B;
			`ori: ALUout=A|B;
			default: ALUout=0;
		endcase
	end

endmodule
