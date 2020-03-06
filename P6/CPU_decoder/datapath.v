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
	input enD,
	input enPC,
	input clrE,
	input [4:0]A3,
	input [3:0]MCMP1D,
	input [3:0]MCMP2D,
	input [3:0]MALUAE,
	input [3:0]MALUBE,
	input [3:0]MWDM,
	output [31:0]IR_D,
	output stall_md
    );
	wire [4:0]A3_W;
	wire [31:0]PC4,PC0,PC4_D,WD,MFCMP1D,MFCMP2D,MFALUAE,MFALUBE,MFWDM,PC4_M,PC4_W,DM_W,V2_M;
	wire [31:0]RFRD1,RFRD2,EXTout,NPC,PC4_E,V1_E,V2_E,E32_E,ALUA,ALUB,AO,PC,IR,DM,DM_M;
	wire [31:0]HIout,LOout,HI_M,LO_M,HI_W,LO_W,AO_E,AO_M,AO_W,IR_E,IR_M,IR_W;
	wire RegWrite_W,zero,mul_div_d,start,busy;
	
	assign stall_md=(start||busy)&&mul_div_d;
	
//F级组合逻辑，包含PC寄存器、IM取指令单元和ADD4逻辑
//PC之前有个功能多选器mux_pc,jr的回写rs之前有个转发多选器MFCMP1D

MUX_PC MUX_PC_(
	.IR_D(IR_D),
	.NPC(NPC),
	.PC4(PC4),
	.MFPCF(MFCMP1D),
	.PC0(PC0)
	);
PC PC_(
	.PC0(PC0),
	.clk(clk),
	.reset(reset),
	.en(enPC),
	.stall_md(stall_md),
	.PC(PC)
	);
ADD4 ADD4_(
	.PC(PC),
	.PC4(PC4)
	);
IM IM_(
	.PC(PC),
	.IR(IR)
	);
	
///////////////////D级寄存器
regD regD_(
	.IR(IR), .PC4(PC4),
	.clk(clk),
	.reset(reset),
	.en(enD),
	.stall_md(stall_md),
	.IR_D(IR_D), .PC4_D(PC4_D),
	.mul_div_d(mul_div_d)
	);

//D级组合逻辑，包含NPC、RF寄存器堆、EXT扩展单元、比较器;
//NPC是为跳转类指令计算下一个PC（考虑延迟槽）
//RF为D级的组合逻辑，和回写单元的寄存器;EXT根据需要扩展;
//比较器为beq指令实现，两输入之前分别有一个转发多路选择器MFCMP1D,MFCMP2D
NPC NPC_(
	.zero(zero),
	.PC4(PC4_D),
	.IR_D(IR_D),
	.NPC(NPC)
	);
RF RF_(
	.A1(IR_D[25:21]),
	.A2(IR_D[20:16]),
	.A3(A3_W),
	.RegWrite_W(RegWrite_W),
	.WD(WD),
	.PC4(PC4_W),
	.clk(clk),
	.reset(reset),
	.V1(RFRD1),
	.V2(RFRD2)
	);
EXT EXT_(
	.IR_D(IR_D),
	.extout(EXTout)
	);
	
MFCMP1D MFCMP1D_(
	.MCMP1D(MCMP1D),
	.RFRD1(RFRD1),
	.PC4_M(PC4_M), .AO_M(AO_M), .HI_M(HI_M), .LO_M(LO_M),
	.PC4_W(PC4_W), .AO_W(AO_W), .DM_W(DM_W), .HI_W(HI_W), .LO_W(LO_W),
	.MFCMP1D(MFCMP1D)
	);

MFCMP2D MFCMP2D_(
	.MCMP2D(MCMP2D),
	.RFRD2(RFRD2),
	.PC4_M(PC4_M), .AO_M(AO_M), .HI_M(HI_M), .LO_M(LO_M),
	.PC4_W(PC4_W), .AO_W(AO_W), .DM_W(DM_W), .HI_W(HI_W), .LO_W(LO_W),
	.MFCMP2D(MFCMP2D)
	);

CMP CMP_(
	.IR_D(IR_D),
	.D1(MFCMP1D),
	.D2(MFCMP2D),
	.zero(zero)
	);

/////////////E级寄存器
regE regE_(
	.clk(clk),
	.reset(reset),
	.clr(clrE),
	.stall_md(stall_md),
	.IR_D(IR_D), .V1_D(MFCMP1D), .V2_D(MFCMP2D), .E32_D(EXTout), .PC4_D(PC4_D),
	.IR_E(IR_E), .V1_E(V1_E), .V2_E(V2_E), .E32_E(E32_E), .PC4_E(PC4_E)
	);


//E级组合逻辑，包含ALU单元，每一路输入之前有个转发多选器
MFALUAE MFALUAE_(
	.MALUAE(MALUAE),
	.V1_E(V1_E),
	.PC4_M(PC4_M),.AO_M(AO_M),.HI_M(HI_M),.LO_M(LO_M),
	.PC4_W(PC4_W),.AO_W(AO_W),.DM_W(DM_W),.HI_W(HI_W),.LO_W(LO_W),
	.MFALUAE(MFALUAE)
	);
MFALUBE MFALUBE_(
	.MALUBE(MALUBE),
	.V2_E(V2_E),
	.PC4_M(PC4_M),.AO_M(AO_M),.HI_M(HI_M),.LO_M(LO_M),
	.PC4_W(PC4_W),.AO_W(AO_W),.DM_W(DM_W),.HI_W(HI_W),.LO_W(LO_W),
	.MFALUBE(MFALUBE)
	);
MUX_ALUA MUX_ALUA_(
	.IR_E(IR_E),
	.V1_E(MFALUAE),
	.A(ALUA)
	);
MUX_ALUB MUX_ALUB_(
	.IR_E(IR_E),
	.V2_E(MFALUBE),
	.E32_E(E32_E),
	.B(ALUB)
	);
ALU ALU_(
	.IR_E(IR_E),
	.A(ALUA),
	.B(ALUB),
	.ALUout(AO)
	);
MD MD_(
	.start(start),
	.IR_E(IR_E),
	.clk(clk),
	.reset(reset),
	.D1(MFALUAE),
	.D2(MFALUBE),
	.busy(busy),
	.HIout(HIout),
	.LOout(LOout)
	);

////////////M级寄存器
regM regM_(
	.clk(clk),
	.reset(reset),
	.IR_E(IR_E), .V2_E(MFALUBE), .AO_E(AO), .PC4_E(PC4_E), .HI_E(HIout), .LO_E(LOout),
	.IR_M(IR_M), .V2_M(V2_M), .AO_M(AO_M), .PC4_M(PC4_M), .HI_M(HI_M), .LO_M(LO_M)
	);

//M级组合逻辑，DM，它的地址输入之前有个转发多选器
MFWDM MFWDM_(
	.MWDM(MWDM),
	.V2_M(V2_M),
	.PC4_W(PC4_W),.AO_W(AO_W),.DM_W(DM_W),.HI_W(HI_W),.LO_W(LO_W),
	.MFWDM(MFWDM)
	);
DM DM_(
	.IR_M(IR_M),
	.Addr(AO_M),
	.DIn(MFWDM),
	.clk(clk),
	.reset(reset),
	.PC4(PC4_M),
	.DO(DM)
	);

///////////W级寄存器
regW regW_(
	.clk(clk),
	.reset(reset),
	.IR_M(IR_M), .PC4_M(PC4_M), .AO_M(AO_M), .DM_M(DM), .HI_M(HI_M), .LO_M(LO_M),
	.PC4_W(PC4_W), .AO_W(AO_W), .DM_W(DM_W), .IR_W(IR_W), .HI_W(HI_W),.LO_W(LO_W),
	.A3_W(A3_W),
	.RegWrite_W(RegWrite_W)
	);

//选择回写的数据的多路选择器
MUX_WD MUX_WD_(
	.IR_W(IR_W),
	.PC4_W(PC4_W),
	.AO_W(AO_W),
	.DM_W(DM_W),
	.HI_W(HI_W),
	.LO_W(LO_W),
	.WD(WD)
	);


endmodule
