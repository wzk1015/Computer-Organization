`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:03 10/17/2019 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output Overflow
    );
	reg [2:0] counter;
	reg flow;
	assign Output=counter;
	assign Overflow=flow;
	
	initial begin
		counter=0;
		flow=0;
	end
	
	
	always @(posedge Clk) begin
		if (Reset==1) begin
			flow <= 0;
			counter <= 3'b000;
		end
		else if (En==1) begin
			case(counter)
			3'b000: counter <= 3'b001;
			3'b001: counter <= 3'b011;
			3'b011: counter <= 3'b010;
			3'b010: counter <= 3'b110;
			3'b110: counter <= 3'b111;
			3'b111: counter <= 3'b101;
			3'b101: counter <= 3'b100;
			3'b100: begin 
					counter <= 3'b000;
					flow <= 1;
				  end
			
			endcase
		end
	end








endmodule
