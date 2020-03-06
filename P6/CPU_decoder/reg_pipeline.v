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

//////////////////////////////////////////////////////////////////////////////////
module regD(
    input [31:0] IR,
    input [31:0] PC4,
    input clk,
    input reset,
    input en,
	 input stall_md,
	 output reg [31:0] PC4_D,
    output reg [31:0] IR_D,
	 output mul_div_d
    );
	decoder code_regD(.IR(IR_D),.mul_div(mul_div_d));
	
	always@(posedge clk)begin
		if(reset)begin
			IR_D=0;
			PC4_D=0;
		end
		else if( en==1 && stall_md==0) begin
			IR_D=IR;
			PC4_D=PC4;
		end	
		
end

endmodule

	module regE(
	input clk,
	input reset,
	input clr,
	input [31:0]IR_D,
	input [31:0]V1_D,
	input [31:0]V2_D,
	input [31:0]E32_D,
	input [31:0]PC4_D,
	input stall_md,
	output reg [31:0]V1_E,
	output reg [31:0]V2_E,
	output reg [31:0]E32_E,
	output reg [31:0]PC4_E,
	output reg [31:0]IR_E
    );
	always@(posedge clk) begin

			if(reset||clr||stall_md)begin
				IR_E=0;
				V1_E=0;
				V2_E=0;
				E32_E=0;
				PC4_E=0;
			end
			else begin
				V1_E=V1_D;
				V2_E=V2_D;
				E32_E=E32_D;
				PC4_E=PC4_D;
				IR_E=IR_D;
			end
	end
endmodule

module regM(
	input clk,
	input reset,
	input [31:0]V2_E,
	input [31:0]AO_E,
	input [31:0]PC4_E,
	input [31:0]IR_E,
	input [31:0]HI_E,
	input [31:0]LO_E,
	output reg[31:0]V2_M,
	output reg[31:0]AO_M,
	output reg[31:0]PC4_M,
	output reg[31:0]IR_M,
	output reg[31:0]HI_M,
	output reg[31:0]LO_M
    );
	always@(posedge clk)begin
			if(reset)begin
				V2_M=0;
				AO_M=0;
				PC4_M=0;
				IR_M=0;
				HI_M=0;
				LO_M=0;
			end
			else begin
				V2_M=V2_E;
				AO_M=AO_E;
				PC4_M=PC4_E;
				IR_M=IR_E;
				HI_M=HI_E;
				LO_M=LO_E;
			end
	end
endmodule 

module regW(
	input clk,
	input reset,
	input [31:0]IR_M,
	input [31:0]PC4_M,
	input [31:0]AO_M,
	input [31:0]DM_M,
	input [31:0]HI_M,
	input [31:0]LO_M,
	output reg [31:0]PC4_W,
	output reg [31:0]AO_W,
	output reg [31:0]DM_W,
	output reg [31:0]IR_W,
	output reg [31:0]HI_W,
	output reg [31:0]LO_W,
	output reg [4:0]A3_W,
	output reg RegWrite_W
    );
	wire [4:0]A3;
	wire RegWrite;
	decoder code_W(.IR(IR_M),.A3(A3),.RegWrite(RegWrite));
	always@(posedge clk)begin
			if(reset)begin
				IR_W=0;
				PC4_W=0;
				AO_W=0;
				DM_W=0;
				HI_W=0;
				LO_W=0;
				A3_W=0;
				RegWrite_W=0;
			end
			else begin
				IR_W=IR_M;
				PC4_W=PC4_M;
				AO_W=AO_M;
				DM_W=DM_M;
				HI_W=HI_M;
				LO_W=LO_M;
				A3_W=A3;
				RegWrite_W=RegWrite;
			end
	end

endmodule 