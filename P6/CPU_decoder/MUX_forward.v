`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:29:54 11/18/2019 
// Design Name: 
// Module Name:    MFCMP1D 
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


//MFxxx:转发MUX输出的数据  Mxxx:转发MUX的选择信号
module MFCMP1D(
	input [3:0]MCMP1D,
	input [31:0]RFRD1,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [31:0]HI_M,
	input [31:0]LO_M,
	input [31:0]HI_W,
	input [31:0]LO_W,
	output reg [31:0]MFCMP1D 		//选择进入比较单元和A1_E的正确信号
	);
	always@*begin
		case(MCMP1D)
			`MD_ALU:MFCMP1D=AO_M;	//M级向D级转发ALU
			`MD_PC:MFCMP1D=PC4_M+4; //M级向D级转发PC
			`MD_HI:MFCMP1D=HI_M;
			`MD_LO:MFCMP1D=LO_M;		//M级往D级转发
			`WD_ALU:MFCMP1D=AO_W;	//W级向D级转发ALU
			`WD_DM:MFCMP1D=DM_W;		//W级向D级转发DM
			`WD_PC:MFCMP1D=PC4_W+4; //W级向D级转发PC
			`WD_HI:MFCMP1D=HI_W;
			`WD_LO:MFCMP1D=LO_W;		//W级往D级转发
			0:MFCMP1D=RFRD1;			//不转发，接RF的RD1接口
			default:MFCMP1D=0;
		endcase
	end
endmodule 

module MFCMP2D(
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [3:0]MCMP2D,
	input [31:0]RFRD2,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]HI_M,
	input [31:0]LO_M,
	input [31:0]HI_W,
	input [31:0]LO_W,
	output reg [31:0]MFCMP2D		//选择进入比较单元和A2_E的正确信号
	);
	always@*begin
		case(MCMP2D)
			`MD_ALU:MFCMP2D=AO_M;   //M级向D级转发ALU
			`MD_PC:MFCMP2D=PC4_M+4;	//M级向D级转发PC
			`MD_HI:MFCMP2D=HI_M;
			`MD_LO:MFCMP2D=LO_M;		//M级往D级转发
			`WD_ALU:MFCMP2D=AO_W;	//W级向D级转发ALU
			`WD_DM:MFCMP2D=DM_W;		//W级向D级转发DM
			`WD_PC:MFCMP2D=PC4_W+4;	//W级向D级转发PC
			`WD_HI:MFCMP2D=HI_W;
			`WD_LO:MFCMP2D=LO_W;		//W级往D级转发
			0:MFCMP2D=RFRD2;			//不转发，接RF的RD2接口
			default:MFCMP2D=0;
		endcase
	end
endmodule 

module MFALUAE(
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [3:0]MALUAE,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]V1_E,
	input [31:0]HI_M,
	input [31:0]LO_M,
	input [31:0]HI_W,
	input [31:0]LO_W,
	output reg [31:0]MFALUAE		//选择进入ALU单元的正确信号
	);
	always@*begin
		case(MALUAE)
			`ME_ALU:MFALUAE=AO_M;	//M级向E级转发ALU
			`ME_PC:MFALUAE=PC4_M+4;	//M级向E级转发PC
			`ME_HI:MFALUAE=HI_M;
			`ME_LO:MFALUAE=LO_M;
			`WE_ALU:MFALUAE=AO_W;	//W级向E级转发ALU
			`WE_DM:MFALUAE=DM_W;		//W级向E级转发DM
			`WE_PC:MFALUAE=PC4_W+4;	//W级向E级转发PC
			`WE_HI:MFALUAE=HI_W;
			`WE_LO:MFALUAE=LO_W;
			0:MFALUAE=V1_E;			//不转发，接E级的V1
			default:MFALUAE=0;
		endcase
	end
endmodule

module MFALUBE(
	input [31:0]PC4_M,
	input [31:0]PC4_W,
	input [3:0]MALUBE,
	input [31:0]AO_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]V2_E,
	input [31:0]HI_M,
	input [31:0]LO_M,
	input [31:0]HI_W,
	input [31:0]LO_W,
	output reg [31:0]MFALUBE		//选择进入ALU单元的正确信号
	);
	always@*begin
		case(MALUBE)
			`ME_ALU:MFALUBE=AO_M;	//M级向E级转发ALU
			`ME_PC:MFALUBE=PC4_M+4;	//M级向E级转发PC
			`ME_HI:MFALUBE=HI_M;
			`ME_LO:MFALUBE=LO_M;
			`WE_ALU:MFALUBE=AO_W;	//W级向E级转发ALU
			`WE_DM:MFALUBE=DM_W;		//W级向E级转发DM
			`WE_PC:MFALUBE=PC4_W+4;	//W级向E级转发PC
			`WE_HI:MFALUBE=HI_W;
			`WE_LO:MFALUBE=LO_W;
			0:MFALUBE=V2_E;			//不转发，接E级的V2
			default:MFALUBE=0;
		endcase
	end
endmodule


module MFWDM(
	input [31:0]PC4_W,
	input [3:0]MWDM,
	input [31:0]V2_M,
	input [31:0]AO_W,
	input [31:0]DM_W,
	input [31:0]HI_W,
	input [31:0]LO_W,
	output reg [31:0]MFWDM		//选择进入M级WD的信号
	);
	always@*begin
		case(MWDM)
			`WM_ALU:MFWDM=AO_W;		//W级向M级转发ALU
			`WM_DM:MFWDM=DM_W;	//W级向M级转发DM
			`WM_PC:MFWDM=PC4_W+4;	//W级向M级转发PC
			`WM_HI:MFWDM=HI_W;
			`WM_LO:MFWDM=LO_W;
			0:MFWDM=V2_M;			//不转发接M级V2
		endcase
	end
endmodule
