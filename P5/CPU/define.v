`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:08 11/17/2019 
// Design Name: 
// Module Name:    define 
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


//PC:
`define ADD4 2'b00
`define NPC  2'b01
`define MFPCF 2'b10

//EXT:
`define zero_ext 2'b00
`define sign_ext 2'b01
`define high_ext 2'b10

//ALU:
`define add 2'b00
`define sub 2'b01
`define ori 2'b10

//MUX_WD
`define AO 2'b00
`define DR 2'b01
`define PC4 2'b10
`define PC8 2'b11


//MFCMP1D¡¢MFCMP2D
`define MD_PC  3'b101
`define WD_PC  3'b100
`define MD_ALU 3'b011
`define WD_ALU 3'b010
`define WD_DM 3'b001

//MFALUAE¡¢MFALUBE
`define ME_PC  3'b101
`define WE_PC  3'b100
`define ME_ALU 3'b011
`define WE_ALU 3'b010
`define WE_DM 3'b001

//MFWDM
`define WM_ALU 2'b01
`define WM_DM 2'b10
`define WM_PC 2'b11
`define NW 2'b00

//AT_controller
`define ALU 2'b01
`define DM 2'b10
`define PC 2'b11
`define NW 2'b00

