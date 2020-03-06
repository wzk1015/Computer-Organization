`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:36 11/08/2019 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
	input [1:0] npcsel,
	input zero,
	input reset,
	input clk,
	input [25:0] imm,
	input [31:0] rsvalue,
	output [31:0] instr,
	output [31:0] PC4
    );
	
	reg [31:0] im[0:1023];
	reg [31:0] PC;
	integer i;
	
	assign PC4 = PC + 4;
	assign instr = im[PC[11:2]];
	
	initial begin
		PC <= 32'h00003000;
		$readmemh("code.txt",im,0);
	end
	
	
	always @(posedge clk) begin
		if (reset==1) begin
			PC <= 32'h00003000;
		end
		else begin
			if (npcsel==2'b01 && zero==1)
				PC <= PC + 4 + { {14{imm[15]}}, imm[15:0], 2'b00 };
			else if (npcsel==2'b10)
				PC <= { PC[31:28], imm[25:0], 2'b00 };
			else if (npcsel==2'b11)
				PC <= rsvalue;
			else
				PC <= PC + 4;
			
		end
		
	end




endmodule
