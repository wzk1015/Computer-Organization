`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:25 11/17/2019 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] Addr,
    input [31:0] DIn,
    input [31:0] IR_M,
    input clk,
    input reset,
    input [31:0] PC4,
    output reg [31:0] DO
    );
	wire MemWrite,sw,sh,sb,lw,lh,lhu,lb,lbu;
	decoder code_DM(.IR(IR_M),.MemWrite(MemWrite),.sw(sw),.sh(sh),.sb(sb),
						 .lw(lw),.lh(lh),.lhu(lhu),.lb(lb),.lbu(lbu));

	reg[31:0] dm[4095:0];
	wire [31:0] PC,AD,word;
	reg [31:0] WD;
	integer i;
	assign PC=PC4-4;
	assign AD={Addr[31:2],2'b0};
	assign word=dm[Addr[13:2]];
	
	initial begin
		for(i=0;i<4096;i=i+1)
			dm[i]=0;
	end
	
	//load
	always @* begin
		if (lb) begin
			case(Addr[1:0])
			2'b00: DO={ {24{word[7]}} , word[7:0]};
			2'b01: DO={ {24{word[15]}}, word[15:8]};
			2'b10: DO={ {24{word[23]}}, word[23:16]};
			2'b11: DO={ {24{word[31]}}, word[31:24]};
			endcase
		end
		else if (lbu) begin
			case(Addr[1:0])
			2'b00: DO={ 24'b0, word[7:0]};
			2'b01: DO={ 24'b0, word[15:8]};
			2'b10: DO={ 24'b0, word[23:16]};
			2'b11: DO={ 24'b0, word[31:24]};
			endcase
		end
		else if (lh) begin
			case(Addr[1])
			0: DO={ {16{word[15]}} , word[15:0]};
			1: DO={ {24{word[31]}} , word[31:16]};
			endcase
		end
		else if (lhu) begin
			case(Addr[1])
			0: DO={ 16'b0, word[15:0]};
			1: DO={ 16'b0, word[31:16]};
			endcase
		end
		else if (lw)
			DO=word;
		else
			DO=word;
	end
	
	
	//store
	always@(posedge clk)begin
		if(reset)begin
			for(i=0;i<4096;i=i+1)
				dm[i]=0;
		end
		else if(MemWrite)begin
			if (sw) begin
			dm[Addr[13:2]]=DIn;
			WD = DIn;
			end
			
			else if(sh) begin
				if(Addr[1]==0) begin
					dm[Addr[13:2]][15:0]=DIn[15:0];
					WD = {dm[Addr[13:2]][31:16],DIn[15:0]};
				end
				else if (Addr[1]==1) begin
					dm[Addr[13:2]][31:16]=DIn[15:0];
					WD = {DIn[15:0],dm[Addr[13:2]][15:0]};
				end
			end
			
			else if(sb) begin
				if (Addr[1:0]==2'b00) begin
					dm[Addr[13:2]][7:0]=DIn[7:0];
					WD = {dm[Addr[13:2]][31:8],DIn[7:0]};
				end
				else if (Addr[1:0]==2'b01) begin
					dm[Addr[13:2]][15:8]=DIn[7:0];
					WD = {dm[Addr[13:2]][31:16],DIn[7:0],dm[Addr[13:2]][7:0]};
				end
				else if (Addr[1:0]==2'b10) begin
					dm[Addr[13:2]][23:16]=DIn[7:0];
					WD = {dm[Addr[13:2]][31:24],DIn[7:0],dm[Addr[13:2]][15:0]};
				end
				else if (Addr[1:0]==2'b11) begin
					dm[Addr[13:2]][31:24]=DIn[7:0];
					WD = {DIn[7:0],dm[Addr[13:2]][23:0]};
				end
			end
			
			$display("%d@%h: *%h <= %h", $time, PC, AD, WD);
			///$display("@%h: *%h <= %h", PC, AD, WD);
		end
		
	end
		
	
	
	

endmodule
