`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:13 11/08/2019 
// Design Name: 
// Module Name:    MUX 
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
module mux_ALU(
		input [31:0] busB,
		input [31:0] immext,
		input ALUSrc,
		output reg [31:0] ALUB
    );
	 
	 always @(*) begin
		case(ALUSrc)
		1'b0: ALUB <= busB;
		1'b1: ALUB <= immext;
		endcase
	 end
	 
	 
endmodule

module mux_GRF(
		input [4:0] rt,
		input [4:0] rd,
		input [1:0] RegDst,
		output reg [4:0] rtd
    );
	 
	always @(*) begin
		case(RegDst)
		2'b00: rtd <= rt;
		2'b01: rtd <= rd;
		2'b10: rtd <= 5'h1f;
		default: rtd <= 0;
		endcase
	 end
	
	
	
endmodule

module mux_WD(
		input [31:0] ALUout,
		input [31:0] dataout,
		input [31:0] PC4,
		input [1:0] MemtoReg,
		output reg [31:0] busW
    );
	
	always @(*) begin
		case(MemtoReg)
		2'b00: busW <= ALUout;
		2'b01: busW <= dataout;
		2'b10: busW <= PC4;
		default: busW <= 0;
		endcase
	 end
	
	

endmodule
