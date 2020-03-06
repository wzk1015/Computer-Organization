`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:48 11/08/2019 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
	input [4:0] rs,
	input [4:0] rt,
	input [4:0] rtd,
	input RegWrite,
	input [31:0] busW,
	input clk,
	input reset,
	input [31:0] PC4,
	output [31:0] busA,
	output [31:0] busB,
	output [31:0] reg31
    );
	
	reg [31:0] register[31:0];
	reg [31:0] PC;
	integer i;
	
	assign busA=register[rs];
	assign busB=register[rt];
	assign reg31=register[31];
	
	initial begin
		for (i=0;i<32;i=i+1)
			register[i] = 0;
	end
	
	always @(posedge clk) begin
		if (reset==1) begin
			for (i=0;i<32;i=i+1)
				register[i] = 0;
		end
		else begin
			if (RegWrite==1) begin
				register[rtd] = busW;
				register[0] = 0;
				PC=PC4-4;
				$display("@%h: $%d <= %h", PC, rtd,busW);
			end
		end
		
	end


endmodule
