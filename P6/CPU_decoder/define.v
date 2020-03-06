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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:12 12/17/2017 
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

//EXTop[1:0]
`define zero_ext 2'b00
`define sign_ext 2'b01
`define high_ext 2'b10 

//ALUctr[3:0]
`define add 4'b0000
`define sub 4'b0001
`define orr 4'b0010
`define andd 4'b0011
`define xorr 4'b0100
`define sign_right 4'b0101
`define zero_right 4'b0110
`define left 4'b0111
`define norr 4'b1000
`define sign_less 4'b1001
`define zero_less 4'b1010

//MDWrite[1:0]
`define whi 2'b01
`define wlo 2'b10

//MDcal[2:0]
`define sign_mults 3'b001
`define mults 3'b010
`define sign_divs 3'b011
`define divs 3'b100

//npcsel[1:0]
`define ADD4 2'b00
`define NPC 2'b01
`define MFPCF 2'b10

//MemtoReg[2:0]
`define AO 3'b000
`define DR 3'b001
`define PC8 3'b010
`define HI 3'b011
`define LO 3'b100

//MFCMP1D MFCMP2D[3:0]
`define MD_ALU 4'b0001
`define MD_PC 4'b0010
`define WD_ALU 4'b0011
`define WD_PC 4'b0100
`define WD_DM 4'b0101
`define MD_HI 4'b0110
`define MD_LO 4'b0111
`define WD_HI 4'b1000
`define WD_LO 4'b1001

//MFALUAE MFALUBE[3:0]
`define ME_ALU 4'b0001
`define ME_PC 4'b0010
`define WE_ALU 4'b0011
`define WE_PC 4'b0100
`define WE_DM 4'b0101
`define ME_HI 4'b0110
`define ME_LO 4'b0111
`define WE_HI 4'b1000
`define WE_LO 4'b1001

//MFWDM[3:0]
`define WM_ALU 4'b0001
`define WM_PC 4'b0010
`define WM_DM 4'b0011
`define WM_HI 4'b0100
`define WM_LO 4'b0101

//res[2:0]
`define ALU 3'b001
`define DM 3'b010
`define PC 3'b011
`define NW 3'b000
`define HIout 3'b100
`define LOout 3'b101
