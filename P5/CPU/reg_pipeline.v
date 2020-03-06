`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:53 11/18/2019 
// Design Name: 
// Module Name:    regE 
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
module regD(
    input [31:0] IR,
    input [31:0] ADD4,
    input clk,
    input reset,
    input en,
	 output reg [31:0] PC4_D,
    output reg [31:0] IR_D
    );
	 
	always@(posedge clk)begin
		if(reset)begin
			IR_D=0;
			PC4_D=0;
		end
		else if(en) begin
			IR_D=IR;
			PC4_D=ADD4;
		end	
		
end

endmodule

	module regE(
	input clk,
	input reset,
	input clr,
	input [31:0]V1,
	input [31:0]V2,
	input [31:0]E32,
	input [31:0]PC4,
	output reg [31:0]V1_E,
	output reg [31:0]V2_E,
	output reg [31:0]E32_E,
	output reg [31:0]PC4_E
    );
	always@(posedge clk) begin

			if(reset||clr)begin
				V1_E=0;
				V2_E=0;
				E32_E=0;
				PC4_E=0;
			end
			else begin
				V1_E=V1;
				V2_E=V2;
				E32_E=E32;
				PC4_E=PC4;
			end
	end
endmodule

module regM(
	input clk,
	input reset,
	input [31:0]V2,
	input [31:0]AO,
	input [31:0]PC4,
	output reg[31:0]V2_M,
	output reg[31:0]AO_M,
	output reg[31:0]PC4_M
    );
	always@(posedge clk)begin
			if(reset)begin
				V2_M=0;
				AO_M=0;
				PC4_M=0;
			end
			else begin
				V2_M=V2;
				AO_M=AO;
				PC4_M=PC4;
			end
	end
endmodule 

module regW(
	input clk,
	input reset,
	input [31:0]PC4,
	input [31:0]AO,
	input [31:0]DR,
	output reg [31:0]PC4_W,
	output reg [31:0]AO_W,
	output reg [31:0]DR_W
    );
	always@(posedge clk)begin
			if(reset)begin
				PC4_W=0;
				AO_W=0;
				DR_W=0;
			end
			else begin
				PC4_W=PC4;
				AO_W=AO;
				DR_W=DR;
			end
	end

endmodule 