`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:30 11/08/2019 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
	input [15:0] imm,
	input [1:0] EXTop,
	output reg [31:0] extout
    );
	
	always @(*) begin
		case(EXTop)
		2'b00: extout={ {16{1'b0}},imm };
		2'b01: extout={ {16{imm[15]}},imm };
		2'b10: extout={ imm,{16{1'b0}} };
		2'b11: extout=0;
		default: extout=0;
		endcase
	end

endmodule
