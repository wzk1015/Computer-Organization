`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:46 11/19/2019 
// Design Name: 
// Module Name:    FORWARD_controller 
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
module FORWARD_controller(
	input [4:0]A1_D,
	input [4:0]A2_D,
	input [4:0]A1_E,
	input [4:0]A2_E,
	input [4:0]A2_M,
	input [4:0]A3_M,
	input [2:0]res_M,
	input [4:0]A3_W,
	input [2:0]res_W,
	
	output [3:0]MFCMP1D,
	output [3:0]MFCMP2D,
	output [3:0]MFALUAE,
	output [3:0]MFALUBE,
	output [3:0]MFWDM
		 );
	
	assign MFALUAE=(A1_E==0)?0:
					((A1_E==A3_M)&&(res_M==`ALU))?`ME_ALU:
					((A1_E==A3_M)&&(res_M==`PC))?`ME_PC:
					((A1_E==A3_M)&&(res_M==`HIout))?`ME_HI:
					((A1_E==A3_M)&&(res_M==`LOout))?`ME_LO:
					
					((A1_E==A3_W)&&(res_W==`ALU))?`WE_ALU:
					((A1_E==A3_W)&&(res_W==`PC))?`WE_PC:
					((A1_E==A3_W)&&(res_W==`DM))?`WE_DM:
					((A1_E==A3_W)&&(res_W==`HIout))?`WE_HI:
					((A1_E==A3_W)&&(res_W==`LOout))?`WE_LO:
					0;
	assign MFALUBE=(A2_E==0)?0:
					((A2_E==A3_M)&&(res_M==`ALU))?`ME_ALU:
					((A2_E==A3_M)&&(res_M==`PC))?`ME_PC:
					((A2_E==A3_M)&&(res_M==`HIout))?`ME_HI:
					((A2_E==A3_M)&&(res_M==`LOout))?`ME_LO:
					
					((A2_E==A3_W)&&(res_W==`ALU))?`WE_ALU:
					((A2_E==A3_W)&&(res_W==`PC))?`WE_PC:
					((A2_E==A3_W)&&(res_W==`DM))?`WE_DM:
					((A2_E==A3_W)&&(res_W==`HIout))?`WE_HI:
					((A2_E==A3_W)&&(res_W==`LOout))?`WE_LO:
					0;  //MFALUBE
	assign MFCMP1D=(A1_D==0)?0:
					((A1_D==A3_M)&&(res_M==`ALU))?`MD_ALU:
					((A1_D==A3_M)&&(res_M==`PC))?`MD_PC:
					((A1_D==A3_M)&&(res_M==`HIout))?`MD_HI:
					((A1_D==A3_M)&&(res_M==`LOout))?`MD_LO:
					((A1_D==A3_W)&&(res_W==`ALU))?`WD_ALU:
					((A1_D==A3_W)&&(res_W==`PC))?`WD_PC:
					((A1_D==A3_W)&&(res_W==`DM))?`WD_DM:
					((A1_D==A3_W)&&(res_W==`HIout))?`WD_HI:
					((A1_D==A3_W)&&(res_W==`LOout))?`WD_LO:
					0;  //MFCMP1D
	assign MFCMP2D=(A2_D==0)?0:
					((A2_D==A3_M)&&(res_M==`ALU))?`MD_ALU:
					((A2_D==A3_M)&&(res_M==`PC))?`MD_PC:
					((A2_D==A3_M)&&(res_M==`HIout))?`MD_HI:
					((A2_D==A3_M)&&(res_M==`LOout))?`MD_LO:
					((A2_D==A3_W)&&(res_W==`ALU))?`WD_ALU:
					((A2_D==A3_W)&&(res_W==`PC))?`WD_PC:
					((A2_D==A3_W)&&(res_W==`DM))?`WD_DM:
					((A2_D==A3_W)&&(res_W==`HIout))?`WD_HI:
					((A2_D==A3_W)&&(res_W==`LOout))?`WD_LO:
					0;  //MFCMP2D
	assign MFWDM=(A2_M==0)?0:
					((A2_M==A3_W)&&(res_W==`ALU))?`WM_ALU:
					((A2_M==A3_W)&&(res_W==`PC))?`WM_PC:
					((A2_M==A3_W)&&(res_W==`DM))?`WM_DM:
					((A2_M==A3_W)&&(res_W==`HIout))?`WM_HI:
					((A2_M==A3_W)&&(res_W==`LOout))?`WM_LO:
					0;  //MFWDM

endmodule
