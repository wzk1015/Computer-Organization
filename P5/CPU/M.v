`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:25 11/17/2019 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] Addr,
    input [31:0] DIn,
    input MemWrite,
    input clk,
    input reset,
    input [31:0] PC4,
    output [31:0] DO
    );
	
	reg[31:0] dm[1023:0];
	wire [31:0]PC;
	integer i;
	assign PC=PC4-4;
	assign DO=dm[Addr[11:2]];
	initial begin
		for(i=0;i<1024;i=i+1)
			dm[i]=0;
	end
	
	always@(posedge clk)begin
		if(reset)begin
			for(i=0;i<1024;i=i+1)
				dm[i]=0;
		end
		else begin
			if(MemWrite)begin
				dm[Addr[11:2]]=DIn;
				$display("%d@%h: *%h <= %h", $time, PC, Addr,DIn);
				///$display("@%h: *%h <= %h", PC, Addr,DIn);
			end
		end
	end
		
	
	
	

endmodule
