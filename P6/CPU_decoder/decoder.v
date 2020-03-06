`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:52 11/27/2019 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
	input [31:0]IR,
	output reg RegWrite,
	output reg MemWrite,
	output reg [1:0]EXTop,
	output reg [3:0]ALUctr,
	output reg [1:0]npcsel,
	output reg [2:0]MemtoReg,
	output reg ALUSrcA,
	output reg ALUSrcB,
	output reg isj,
	output reg isjr,
	output reg isb,
	output reg [1:0] MDWrite,
	output reg [2:0] MDcal,
	output reg start,
	output reg mul_div,
	output reg lb,
	output reg lbu,
	output reg lh,
	output reg lhu,
	output reg lw,
	output reg sb,
	output reg sh,
	output reg sw,
	output reg beq,
	output reg bne,
	output reg blez,
	output reg bltz,
	output reg bgez,
	output reg bgtz,
	output reg [4:0]A3,
	output reg [2:0]res,
	output reg Tuse_rs0,
	output reg Tuse_rs1,
	output reg Tuse_rt0,
	output reg Tuse_rt1,
	output reg Tuse_rt2
    );
	
	reg add,addu,sub,subu,mult,multu,div,divu,sll,srl,sra,sllv,srlv,srav,andd,orr,xorr,norr;
	reg addi,addiu,andi,ori,xori,lui,slt,slti,sltiu,sltu,j,jal,jalr,jr,mfhi,mflo,mthi,mtlo;
	reg cal_r,cal_i,load,store,branch,jump,shift;
	always@*begin
			//cal_r:13 done
			add = (IR[31:26]==6'b000000 && IR[5:0]==6'b100000)?1:0;
			addu = (IR[31:26]==6'b000000 && IR[5:0]==6'b100001)?1:0;
			sub = (IR[31:26]==6'b000000 && IR[5:0]==6'b100010)?1:0;
			subu = (IR[31:26]==6'b000000 && IR[5:0]==6'b100011)?1:0;
			andd = (IR[31:26]==6'b000000 && IR[5:0]==6'b100100)?1:0;
			orr = (IR[31:26]==6'b000000 && IR[5:0]==6'b100101)?1:0;
			xorr = (IR[31:26]==6'b000000 && IR[5:0]==6'b100110)?1:0;
			norr = (IR[31:26]==6'b000000 && IR[5:0]==6'b100111)?1:0;
			slt = (IR[31:26]==6'b000000 && IR[5:0]==6'b101010)?1:0;
			sltu = (IR[31:26]==6'b000000 && IR[5:0]==6'b101011)?1:0;
			sllv = (IR[31:26]==6'b000000 && IR[5:0]==6'b000100)?1:0;
			srlv = (IR[31:26]==6'b000000 && IR[5:0]==6'b000110)?1:0;
			srav = (IR[31:26]==6'b000000 && IR[5:0]==6'b000111)?1:0;
			
			//cal_i:8 done
			addi = (IR[31:26]==6'b001000)?1:0;
			addiu = (IR[31:26]==6'b001001)?1:0;
			andi = (IR[31:26]==6'b001100)?1:0;
			ori = (IR[31:26]==6'b001101)?1:0;
			xori = (IR[31:26]==6'b001110)?1:0;
			lui = (IR[31:26]==6'b001111)?1:0;
			slti = (IR[31:26]==6'b001010)?1:0;
			sltiu = (IR[31:26]==6'b001011)?1:0;
			
			//load:5 done
			lb = (IR[31:26]==6'b100000)?1:0;
			lbu = (IR[31:26]==6'b100100)?1:0;
			lh = (IR[31:26]==6'b100001)?1:0;
			lhu = (IR[31:26]==6'b100101)?1:0;
			lw = (IR[31:26]==6'b100011)?1:0;
			
			//store:3 done
			sb = (IR[31:26]==6'b101000)?1:0;
			sh = (IR[31:26]==6'b101001)?1:0;
			sw = (IR[31:26]==6'b101011)?1:0;
			
			//branch:6 done
			beq = (IR[31:26]==6'b000100)?1:0;
			bne = (IR[31:26]==6'b000101)?1:0;
			blez = (IR[31:26]==6'b000110)?1:0;
			bgtz = (IR[31:26]==6'b000111)?1:0;
			bltz = (IR[31:26]==6'b000001 && IR[20:16]==5'b00000)?1:0;
			bgez = (IR[31:26]==6'b000001 && IR[20:16]==5'b00001)?1:0;
			
			//jump:4 done
			j = (IR[31:26]==6'b000010)?1:0;
			jal = (IR[31:26]==6'b000011)?1:0;
			jr = (IR[31:26]==6'b000000 && IR[5:0]==6'b001000)?1:0;
			jalr = (IR[31:26]==6'b000000 && IR[5:0]==6'b001001)?1:0;
			
			//shift:3 done
			sll = (IR[31:26]==6'b000000 && IR[5:0]==6'b000000)?1:0;
			srl = (IR[31:26]==6'b000000 && IR[5:0]==6'b000010)?1:0;
			sra = (IR[31:26]==6'b000000 && IR[5:0]==6'b000011)?1:0;
			
			//mul_dic:8
			mult = (IR[31:26]==6'b000000 && IR[5:0]==6'b011000)?1:0;
			multu = (IR[31:26]==6'b000000 && IR[5:0]==6'b011001)?1:0;
			div = (IR[31:26]==6'b000000 && IR[5:0]==6'b011010)?1:0;
			divu = (IR[31:26]==6'b000000 && IR[5:0]==6'b011011)?1:0;
			mfhi = (IR[31:26]==6'b000000 && IR[5:0]==6'b010000)?1:0;
			mflo = (IR[31:26]==6'b000000 && IR[5:0]==6'b010010)?1:0;
			mthi = (IR[31:26]==6'b000000 && IR[5:0]==6'b010001)?1:0;
			mtlo = (IR[31:26]==6'b000000 && IR[5:0]==6'b010011)?1:0;
			
			//分为8类
			cal_r = add+addu+sub+subu+andd+orr+norr+xorr+slt+sltu+sllv+srlv+srav;
			cal_i = addi+addiu+andi+ori+xori+lui+slti+sltiu;
			load = lb+lbu+lh+lhu+lw;
			store = sb+sh+sw;
			branch = beq+bne+blez+bgtz+bltz+bgez;
			jump = j+jal+jr+jalr;
			shift = sll+srl+sra;
			mul_div = mult+multu+div+divu+mfhi+mflo+mthi+mtlo;
			
	//指令译码
	//ALU
		ALUSrcA= (shift)?1:0;	//1:shamt  0:RS
		ALUSrcB= (cal_i+load+store)?1:0;	//1:EXT  0:RT
		ALUctr=(load+store+add+addu+addi+addiu+lui)?`add:	//ALU单元执行什么样的操作  加（0）
			 (sub+subu)?`sub://减
			 (andd+andi)?`andd://与
			 (orr+ori)?`orr://或
			 (xorr+xori)?`xorr://异或
			 (norr)?`norr://或非
			 (sll+sllv)?`left://左移
			 (srl+srlv)?`zero_right://逻辑右移
			 (sra+srav)?`sign_right://算数（符号）右移
			 (slt+slti)?`sign_less://有符号数小于置1
			 (sltiu+sltu)?`zero_less:0;//无符号数小于置1
	//NPC
		npcsel= (branch+j+jal)?`NPC:
				  (jr+jalr)?`MFPCF:
				  (cal_r+cal_i+load+store+shift+mul_div)?`ADD4:0;	//0:`ADD4
		EXTop= (addi+addiu+slti+sltiu+load+store)?`sign_ext:
				 (ori+andi+xori)?`zero_ext:
				 (lui)?`high_ext:0;
	//RF
		RegWrite= (load+cal_r+cal_i+mfhi+mflo+jal+jalr+shift)?1:0;
		A3=	 (cal_r+mfhi+mflo+shift+jalr)?IR[15:11]:
				 (load+cal_i)?IR[20:16]:
				 (jal)?5'h1f:	//31号寄存器
				 5'b0;
		
	//DM
		MemWrite= (store)?1:0;//写内存
		MemtoReg= (cal_r+cal_i+shift)?`AO:
					 (load)?`DR:
					 (jal+jalr)?`PC8:
					 (mfhi)?`HI:
					 (mflo)?`LO:
					 0;
	//转发
		res=	(cal_r+cal_i+shift)?`ALU:			//指令的对应部件（等价于Tnew初始值）
			   (load)?`DM:
				(jal+jalr)?`PC:
				(mflo)?`LOout://LO产生结果？
				(mfhi)?`HIout://HI产生结果？
				`NW;//不产生结果
				
	//暂停
		Tuse_rs0=jr+jalr+branch;	//rs=0的指令
		Tuse_rs1=cal_r+cal_i+mthi+mtlo+mult+multu+div+divu+load+store;	//rs=1的指令
		Tuse_rt0=beq+bne;
		Tuse_rt1=cal_r+shift+mult+multu+div+divu;
		Tuse_rt2=store;
	//乘除判断
	
	MDWrite=mthi?`whi://写hi寄存器
				mtlo?`wlo:0;//写lo寄存器
	MDcal=mult?`sign_mults://有符号乘法？
			 multu?`mults://无符号乘法？
			 div?`sign_divs://有符号除法？
			 divu?`divs:0;//无符号除法？
	start=mult||multu||div||divu;//开始乘除运算

	//NPC的跳转	
		isj=jal||j;//j类跳转
		isjr=jr||jalr;//跳转到指定寄存器
		isb=branch;//b类指令
	end
endmodule 