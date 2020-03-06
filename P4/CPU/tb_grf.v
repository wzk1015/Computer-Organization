`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:32 11/08/2019
// Design Name:   GRF
// Module Name:   D:/Computer_Organization/P4/CPU/tb_grf.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_grf;

	// Inputs
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rtd;
	reg RegWrite;
	reg [31:0] busW;
	reg clk;
	reg reset;
	reg [31:0] PC4;

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.rs(rs), 
		.rt(rt), 
		.rtd(rtd), 
		.RegWrite(RegWrite), 
		.busW(busW), 
		.clk(clk), 
		.reset(reset), 
		.PC4(PC4), 
		.busA(busA), 
		.busB(busB)
	);

	initial begin
		// Initialize Inputs
		rs = 0;
		rt = 0;
		rtd = 0;
		RegWrite = 0;
		busW = 0;
		clk = 0;
		reset = 0;
		PC4 = 32'h00003000;

		// Wait 100 ns for global reset to finish
		#100;
		RegWrite <= 1;
      #150;
		rtd <= 28;
		busW <= 32'b1;
		#200;
		rs <= 28;
		// Add stimulus here

	end
	
	always #1 clk=~clk;
      
endmodule

