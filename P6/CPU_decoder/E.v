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

module MD(
	input [31:0]IR_E,
	input clk,
	input reset,
	input [31:0] D1,
	input [31:0] D2,
	output  [31:0]HIout,
	output  [31:0]LOout,
	output start,
	output reg busy
	);
	integer count_mult,count_div;	//乘除周期计数
	reg [31:0]HI,LO;
	wire [1:0]MDWrite;
	wire[2:0]MDcal;
	decoder code_MD(.IR(IR_E),.MDWrite(MDWrite),.MDcal(MDcal),.start(start));
	initial begin 
		HI=0;LO=0;busy=0;count_mult=5;count_div=10;
	end
	assign HIout=HI;
	assign LOout=LO;
	always@(posedge clk)begin
		if(reset)begin
			HI=0;
			LO=0;
			busy=0;
			count_mult=5;
			count_div=10;
		end
		else begin
			//WRITE HI LO
			if(MDWrite==`whi)
				HI=D1;
			else if(MDWrite==`wlo)
				LO=D1;
			
			//乘法计算完成
			if(count_mult==0)begin
				busy=0;
				count_mult=5;
			end
			//乘法计算中
			else if(count_mult!=5)begin
				busy=1;
				count_mult=count_mult-1;
			end
			//除法计算完成
			if(count_div==0)begin
				busy=0;
				count_div=10;
			end
			//除法计算中
			else if(count_div!=10)begin
				busy=1;
				count_div=count_div-1;
			end

			//初始状态，开始计算，count_div=10 && count_mult=5
			//无符号乘法
			else if(MDcal==`mults)begin
				busy=1;
				{HI,LO}=D1*D2;
				count_mult=count_mult-1;
			end
			//有符号乘法
			else if(MDcal==`sign_mults)begin
				busy=1;
				{HI,LO}=$signed(D1)*$signed(D2);
				count_mult=count_mult-1;
			end
			//无符号除法
			else if(MDcal==`divs)begin
				busy=1;
				LO=D1/D2;
				HI=D1%D2;
				count_div=count_div-1;
			end
			//有符号除法
			else if(MDcal==`sign_divs)begin
				busy=1;
				LO=$signed(D1)/$signed(D2);
				HI=$signed(D1)%$signed(D2);
				count_div=count_div-1;
			end
		end
	end
endmodule		




module ALU(
    input [31:0] A,
    input [31:0] B,
    input [31:0] IR_E, 
    output reg [31:0] ALUout
    );
	wire [3:0] ALUctr;
	decoder code_ALU(.IR(IR_E),.ALUctr(ALUctr));
	always @(*) begin
		case(ALUctr)
			`add: ALUout=A+B;
			`sub: ALUout=A-B;
			`andd: ALUout=A&B;
			`orr: ALUout=A|B;
			`xorr: ALUout=A^B;
			`norr: ALUout=~(A|B);
			`left: ALUout=B<<A[4:0];
			`sign_right: ALUout=($signed(B)>>>A[4:0]);
			`zero_right: ALUout=B>>A[4:0];
			`sign_less: ALUout= ($signed(A)<$signed(B));
			`zero_less: ALUout=(A<B);
			default: ALUout=0;
		endcase
	end

endmodule
