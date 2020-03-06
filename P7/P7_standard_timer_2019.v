`timescale 1ns / 1ps
`define IDLE 2'b00
`define LOAD 2'b01
`define CNT  2'b10
`define INT  2'b11

`define ctrl   mem[0]
`define preset mem[1]
`define count  mem[2]
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:39 12/28/2017 
// Design Name: 
// Module Name:    TC 
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
module TC(
    input clk,
    input reset,
    input [31:2] Addr,
    input WE,
    input [31:0] Din,
    output [31:0] Dout,
    output IRQ	//输出中断请求
    );

	reg [1:0] state;
	reg [31:0] mem [2:0];	//mem[0]:CTRL, mem[1]:PRESET, mem[2]:COUNT
	
	reg _IRQ;
	assign IRQ = `ctrl[3] & _IRQ;	//ctrl[3]==1代表允许中断
	
	assign Dout = mem[Addr[3:2]];	//Addr的[3:2]位表示要读写的寄存器编号
	
	wire [31:0] load = Addr[3:2] == 0 ? {28'h0, Din[3:0]} : Din;	//写CTRL寄存器时只写后四位
	
	integer i;
	always @(posedge clk) begin
		if(reset) begin		//复位为0
			state <= 0; 
			for(i = 0; i < 3; i = i+1) mem[i] <= 0;
			_IRQ <= 0;
		end
		else if(WE) begin
			// $display("%d@: *%h <= %h", $time, {Addr, 2'b00}, load);
			mem[Addr[3:2]] <= load;	//写寄存器
		end
		else begin
			case(state)
				`IDLE : if(`ctrl[0]) begin	//闲置态，计数器使能有效时进入重置态，结束中断
					state <= `LOAD;
					_IRQ <= 1'b0;
				end
				`LOAD : begin		//重置态，计数器重置为初始值，进入计数态
					`count <= `preset;
					state <= `CNT;
				end
				`CNT  : 			//计数态
					if(`ctrl[0]) begin	//计数器使能有效时，count每个周期-1
						if(`count > 1) `count <= `count-1;
						else begin	//count减到0时进入中断态
							`count <= 0;
							state <= `INT;
							_IRQ <= 1'b1;
						end
					end
					else state <= `IDLE;	//计数器使能无效时回到闲置态
				default : begin		//`INT：中断态
					if(`ctrl[2:1] == 2'b00) `ctrl[0] <= 1'b0;	//模式0：计数器使能置0，持续中断直至使能被置1
					else _IRQ <= 1'b0;			//模式1：直接停止中断
					state <= `IDLE;			//两种模式均回到闲置态
				end
			endcase
		end
	end

endmodule
