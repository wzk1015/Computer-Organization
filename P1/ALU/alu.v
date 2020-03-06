`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:02 10/17/2019 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );
	 reg [31:0] Cc;
	 assign C=Cc;
	 
	always @(*) begin
	if (ALUOp==0)
		Cc=A+B;
	else if (ALUOp==1)
		Cc=A-B;
	else if (ALUOp==2)
		Cc=A&B;
	else if (ALUOp==3)
		Cc=A|B;
	else if (ALUOp==4)
		Cc=A>>B;
	else
		Cc=($signed(A))>>>B;
	end

endmodule
