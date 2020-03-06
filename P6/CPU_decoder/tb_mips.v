`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:11 11/29/2019
// Design Name:   mips
// Module Name:   D:/Computer_Organization/P6/CPU_decoder/tb_mips.v
// Project Name:  CPU_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		#10
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;
		// Add stimulus here
	end
	
	always #5 clk=~clk;
      
endmodule

