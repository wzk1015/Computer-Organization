`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:18 11/19/2019 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
	input clk,
	input reset,
	input beq,
	input j,
	input jal,
	input [4:0]A3_W,
	input ALUSrc,
	input [1:0]MemtoReg,
	input [1:0]npcsel,
	input RegWrite,
	input MemWrite,
	input [1:0]EXTop,
	input [1:0]ALUctr,
	input [2:0]MCMP1D,
	input [2:0]MCMP2D,
	input [2:0]MALUBE,
	input [2:0]MWDM,
	input [2:0]MALUAE,
	input enD,
	input enPC,
	input clrE,
	output [31:0]IR_D
    );
	wire [31:0]PC0,PC,ADD4,NPC,RFRD1,AO_M,AO_W,DM_W,IR,PC4_D,PC4_W,RFRD2,extout,V1_E,V2_E,E32_E,PC4_E,MFALUBE,AO;
	wire [31:0]V2_M,PC4_M,MFWDM,DR,WD,MFCMP1D,MFCMP2D,MFALUAE,ALUB;
	wire zero;
	
//F级组合逻辑，包含PC寄存器、IM取指令单元和ADD4逻辑
//PC之前有个功能多选器mux_pc,jr的回写rs之前有个转发多选器MFCMP1D

MUX_PC mux_pc(
	.npcsel(npcsel),
	.ADD4(ADD4),
	.NPC(NPC),
	.MFPCF(MFCMP1D),
	.PC0(PC0)
	);
PC pc(
	.PC0(PC0),
	.clk(clk),
	.reset(reset),
	.en(enPC),
	.PC(PC)
	);
ADD4 add4(
	.PC(PC),
	.PC4(ADD4)
	);
IM im(
	.PC(PC),
	.IR(IR)
	);
	
///////////////////D级寄存器
regD regd(
	.IR(IR),
	.ADD4(ADD4),
	.clk(clk),
	.reset(reset),
	.en(enD),
	.IR_D(IR_D),
	.PC4_D(PC4_D)
	);

//D级组合逻辑，包含NPC、RF寄存器堆、EXT扩展单元、比较器;
//NPC是为跳转类指令计算下一个PC（考虑延迟槽）
//RF为D级的组合逻辑，和回写单元的寄存器;EXT根据需要扩展;
//比较器为beq指令实现，两输入之前分别有一个转发多路选择器MFCMP1D,MFCMP2D
NPC npc(
	.beq(beq),
	.zero(zero),
	.j(j),
	.jal(jal),
	.PC4(PC4_D),
	.imm(IR_D[25:0]),
	.NPC(NPC)
	);
RF rf(
	.A1(IR_D[25:21]),
	.A2(IR_D[20:16]),
	.A3(A3_W),
	.RegWrite(RegWrite),
	.WD(WD),
	.PC4(PC4_W),
	.clk(clk),
	.reset(reset),
	.V1(RFRD1),
	.V2(RFRD2)
	);
EXT ext(
	.imm(IR_D[15:0]),
	.EXTop(EXTop),
	.extout(extout)
	);
	
MFCMP1D mfcmp1d(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MCMP1D(MCMP1D),
	.RFRD1(RFRD1),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MFCMP1D(MFCMP1D)
	);

MFCMP2D mfcmp2d(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MCMP2D(MCMP2D),
	.RFRD2(RFRD2),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MFCMP2D(MFCMP2D)
	);

CMP cmp(
	.D1(MFCMP1D),
	.D2(MFCMP2D),
	.zero(zero)
	);

/////////////E级寄存器
regE rege(
	.clk(clk),
	.reset(reset),
	.clr(clrE),
	.V1(MFCMP1D),
	.V2(MFCMP2D),
	.E32(extout),
	.PC4(PC4_D),
	.V1_E(V1_E),
	.V2_E(V2_E),
	.E32_E(E32_E),
	.PC4_E(PC4_E)
	);


//E级组合逻辑，包含ALU单元，每一路输入之前有个转发多选器
MFALUBE mfalube(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MALUBE(MALUBE),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.V2_E(V2_E),
	.MFALUBE(MFALUBE)
	);
	
MFALUAE mfaluae(
	.PC4_M(PC4_M),
	.PC4_W(PC4_W),
	.MALUAE(MALUAE),
	.AO_M(AO_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.V1_E(V1_E),
	.MFALUAE(MFALUAE)
	);

MUX_ALU mux_alu(
	.V2_E(MFALUBE),
	.E32_E(E32_E),
	.ALUSrc(ALUSrc),
	.B(ALUB)
	);
ALU alu(
	.A(MFALUAE),
	.B(ALUB),
	.ALUctr(ALUctr),
	.ALUout(AO)
	);

////////////M级寄存器
regM regm(
	.clk(clk),
	.reset(reset),
	.V2(MFALUBE),
	.AO(AO),
	.PC4(PC4_E),
	.V2_M(V2_M),
	.AO_M(AO_M),
	.PC4_M(PC4_M)
	);

//M级组合逻辑，DM，它的地址输入之前有个转发多选器
MFWDM mfwdm(
	.PC4_W(PC4_W),
	.MWDM(MWDM),
	.V2_M(V2_M),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MFWDM(MFWDM)
	);
DM dm(
	.Addr(AO_M),
	.DIn(MFWDM),
	.MemWrite(MemWrite),
	.clk(clk),
	.reset(reset),
	.PC4(PC4_M),
	.DO(DR)
	);

///////////W级寄存器
regW regw(
	.clk(clk),
	.reset(reset),
	.PC4(PC4_M),
	.AO(AO_M),
	.DR(DR),
	.PC4_W(PC4_W),
	.AO_W(AO_W),
	.DR_W(DM_W)
	);

//选择回写的数据的多路选择器
MUX_WD mux_wd(
	.PC4_W(PC4_W),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.MemtoReg(MemtoReg),
	.WD(WD)
	);


endmodule
