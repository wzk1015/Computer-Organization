`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:05 11/17/2019 
// Design Name: 
// Module Name:    F 
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
module PC(
    input [31:0] PC0,
    input clk,
    input reset,
    input en,
	 input stall_md,
    output reg [31:0] PC
    );

	initial begin
		PC <= 32'h00003000;
	end

	always @(posedge clk) begin
		if (reset)
			PC <= 32'h00003000;
		else if (en&&!stall_md)
			PC<= PC0;
	end
endmodule


module IM(
    input [31:0] PC,
    output [31:0] IR
    );
	reg [31:0] im[0:4095];
	wire [31:0] im_addr;
	integer i;
	
	initial begin
		for (i=0;i<4096;i=i+1)
			im[i]=0;
		$readmemh("code.txt",im,0);
	end
	
	assign im_addr = PC-32'h3000;
	assign IR = im[im_addr[13:2]];
	
endmodule 

module ADD4(
	input [31:0] PC,
	output [31:0] PC4
	);
	assign PC4=PC+4;
endmodule
