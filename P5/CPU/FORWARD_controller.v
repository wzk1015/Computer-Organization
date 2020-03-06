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
	input [1:0]res_M,
	input [4:0]A3_W,
	input [1:0]res_W,
	
	output reg [2:0]MFCMP1D,
	output reg [2:0]MFCMP2D,
	output reg [2:0]MFALUAE,
	output reg [2:0]MFALUBE,
	output reg [2:0]MFWDM
		 );
		 
	always@*begin
		//////////////////
		if(A2_E==0) 	//MFALUBE
			MFALUBE=0;
		else begin
			if(A2_E==A3_M)begin
				case(res_M)
				`ALU: MFALUBE=`ME_ALU;
				`PC: MFALUBE=`ME_PC;
				//default: MFALUBE=0;
				endcase
			end
			else if(A2_E==A3_W)begin
				case(res_W)
				`ALU: MFALUBE=`WE_ALU;
				`PC: MFALUBE=`WE_PC;
				`DM: MFALUBE=`WE_DM;
				//default: MFALUBE=0;
				endcase
			end
			else 
				MFALUBE=0;
		end                                                      
		///////////////////////
		if(A1_E==0)		 //MFALUAE
			MFALUAE=0;
		else begin
			if(A1_E==A3_M)begin
				case(res_M)
				`ALU:MFALUAE=`ME_ALU;
				`PC:MFALUAE=`ME_PC;
				//default: MFALUAE=0;
				endcase
			end
			else if(A1_E==A3_W)begin
				case(res_W)
				`ALU: MFALUAE=`WE_ALU;
				`PC: MFALUAE=`WE_PC;
				`DM: MFALUAE=`WE_DM;
				//default: MFALUAE=0;
				endcase
			end
			else 
				MFALUAE=0;
			end                                                       
		/////////////////////
		if(A1_D==0) 		//MFCMP1D
			MFCMP1D=0;
		else begin
			if(A1_D==A3_M)begin
				case(res_M)
				`ALU: MFCMP1D=`MD_ALU;
				`PC: MFCMP1D=`MD_PC;
				//default: MFCMP1D=0;
				endcase
			end
			else if(A1_D==A3_W)begin
				case (res_W)
				`ALU: MFCMP1D=`WD_ALU;
				`PC: MFCMP1D=`WD_PC;
				`DM: MFCMP1D=`WD_DM;
				//default: MFCMP1D=0;
				endcase
			end
			else
				MFCMP1D=0;
		end                                                      
		///////////////////
		if(A2_D==0) 		//MFCMP2D
			MFCMP2D=0;
		else begin
			if(A2_D==A3_M)begin
				case(res_M)
				`ALU: MFCMP2D=`MD_ALU;
				`PC: MFCMP2D=`MD_PC;
				//default: MFCMP2D=0;
				endcase
			end
			else if(A2_D==A3_W)begin
				case(res_W)
				`ALU: MFCMP2D=`WD_ALU;
				`PC: MFCMP2D=`WD_PC;
				`DM: MFCMP2D=`WD_DM;
				//default: MFCMP2D=0;
				endcase
			end
			else 
				MFCMP2D=0;
		end                                                      
		///////////////////////
		if(A2_M==0)			//MFWDM
			MFWDM=0;
		else begin
			if(A2_M==A3_W)begin
				case(res_W)
				`ALU: MFWDM=`WM_ALU;
				`PC: MFWDM=`WM_PC;
				`DM: MFWDM=`WM_DM;
				//default:MFWDM=0;
				endcase
			end
			else MFWDM=0;
		end  		
	end
endmodule
