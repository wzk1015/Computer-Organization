`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:46:18 10/17/2019
// Design Name:   gray
// Module Name:   D:/Computer Organization/P1/GRAY/tb_gray.v
// Project Name:  GRAY
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_gray;

	// Inputs
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		Clk = 0;
		Reset = 0;
		En = 0;
		#5;
		En = 1;
		#10;
		Reset = 1;
		#15;
		Reset = 0;
		#50;
		Reset = 1;
		#53;
		Reset = 0;
		

	end
	
	always #1 Clk=~Clk;
      
endmodule

