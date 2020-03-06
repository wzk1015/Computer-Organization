`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:11:29 12/09/2019
// Design Name:   mips
// Module Name:   E:/P7/P7-1/TEST.v
// Project Name:  P7-1
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

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:29 11/16/2016
// Design Name:   mips
// Module Name:   D:/ISE/P4/mips_txt.v
// Project Name:  P4
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
module TEST;

	// Inputs
	reg clk;
	reg reset;
	reg interrupt;

	// Outputs
	wire [31:0] addr;
	

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset),
		.addr(addr),
		.interrupt(interrupt)
	);

	parameter exception_pc1 = 32'h0000301c;
	parameter exception_pc2 = 32'h00003020;
	parameter exception_pc3 = 32'h000030ac;
	parameter exception_pc4 = 32'h00003108;
	parameter exception_pc5 = 32'h000031c0;
	integer exception_count1;
	integer exception_count2;
	integer exception_count3;
	integer exception_count4;
	integer exception_count5;
	integer interrupt_counter;
	integer needInterrupt;

	initial begin
		exception_count1 = 0;
		exception_count2 = 0;
		exception_count3 = 0;
		exception_count4 = 0;
		exception_count5 = 0;
		interrupt = 0;
		needInterrupt = 0;
		interrupt_counter = 0;
		// Initialize Inputs
		clk = 0;
		reset = 1;
		#20 reset = 0;
		#10000;
		$finish;
		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end
   always #2 clk = ~clk;

   always @(negedge clk) begin
      if (reset) begin
	  	interrupt_counter = 0;
		needInterrupt = 0;
		interrupt = 0;
	  end 
	  else begin
	  	if (interrupt) begin
		  	if (interrupt_counter == 0) begin
				interrupt = 0;
			end 
			else begin
				interrupt_counter = interrupt_counter - 1;
			end
		end 
		else begin
			case (addr)
				exception_pc1: 
					begin
						if (needInterrupt != exception_pc1 & needInterrupt != 0) begin
							needInterrupt = 0;
							interrupt = 1;
							interrupt_counter = 5;
						end
						else if (exception_count1 == 0) begin
							exception_count1 = 1;
							needInterrupt = exception_pc1;
						end
					end
				exception_pc2: 
					begin
						if (needInterrupt != exception_pc2 & needInterrupt != 0) begin
							needInterrupt = 0;
							interrupt = 1;
							interrupt_counter = 5;
						end
						else if (exception_count2 == 0) begin
							exception_count1 = 1;
							needInterrupt = exception_pc2;
						end
					end
				exception_pc3: 
					begin
						if (needInterrupt != exception_pc3 & needInterrupt != 0) begin
							needInterrupt = 0;
							interrupt = 1;
							interrupt_counter = 5;
						end
						else if (exception_count3 == 0) begin
							exception_count1 = 1;
							needInterrupt = exception_pc3;
						end
					end
				exception_pc4: 
					begin
						if (needInterrupt != exception_pc4 & needInterrupt != 0) begin
							needInterrupt = 0;
							interrupt = 1;
							interrupt_counter = 5;
						end
						else if (exception_count4 == 0) begin
							exception_count1 = 1;
							needInterrupt = exception_pc4;
						end
					end
				exception_pc5: 
					begin
						if (needInterrupt != exception_pc5 & needInterrupt != 0) begin
							needInterrupt = 0;
							interrupt = 1;
							interrupt_counter = 5;
						end
						else if (exception_count5 == 0) begin
							exception_count1 = 1;
							needInterrupt = exception_pc5;
						end
					end
				default:
					begin
						if (needInterrupt != 0) begin
							needInterrupt = 0;
							interrupt = 1;
							interrupt_counter = 5;
						end
					end
			endcase
		end
	  end
	
   end

endmodule

