`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:12 11/08/2019 
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
		input [31:0] addr,
		input [31:0] data,
		input MemWrite,
		input clk,
		input reset,
		input [31:0] PC4,
		output [31:0] dataout
    );
	
		reg [31:0] dm[1023:0];
		reg [31:0] PC;
		integer i;
	
	assign dataout=dm[addr[11:2]];
	
	initial begin
		for (i=0;i<1024;i=i+1)
			dm[i] = 0;
	end
	
	always @(posedge clk) begin
		if (reset==1) begin
			for (i=0;i<1024;i=i+1)
				dm[i] = 0;
		end
		else begin
			if (MemWrite==1) begin
				dm[addr[11:2]] = data;
				PC = PC4 - 4;
				$display("@%h: *%h <= %h",PC, addr,data);
			end
		end
	end

endmodule
