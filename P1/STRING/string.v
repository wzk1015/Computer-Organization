`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:57:39 10/17/2019 
// Design Name: 
// Module Name:    string 
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
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	
	reg [2:0] state;
	reg out_;
	assign out = (state==2'b01);

	
	initial begin
		out_ = 0;
		state = 2'b00;
	end
	
	always @(posedge clr) begin
			state <= 2'b00;
	end
	
	always @(posedge clk) begin
		if (clr==1)
			state <= 2'b00;
		else
			case(state)
				2'b00:
					begin
						if (in>="0" && in<="9")
							state <= 2'b01;
						else
							state <= 2'b11;
					end
				2'b01:
					begin
						if (in=="+" || in=="*")
							state <= 2'b10;
						else
							state <= 2'b11;
					end
				2'b10:
					begin
						if (in>="0" && in<="9")
							state <= 2'b01;
						else
							state <= 2'b11;
					end
				2'b11:
							state <= 2'b11;
			endcase
	end










endmodule
