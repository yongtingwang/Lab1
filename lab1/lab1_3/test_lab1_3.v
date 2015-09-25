`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:41 08/19/2015
// Design Name:   lab1_3
// Module Name:   C:/Users/kerker/NTHU/MS0/logic lab/lab_result/lab1/lab1_3/test_lab1_3.v
// Project Name:  lab1_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab1_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_lab1_3;

	// Inputs
	reg en;
	reg a0;
	reg a1;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;

	// Instantiate the Unit Under Test (UUT)
	lab1_3 uut (
		.en(en), 
		.a0(a0), 
		.a1(a1), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		a0 = 0;
		a1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10 a0=0;a1=0;en=1;
		#10 a0=0;a1=1;en=0;
		#10 a0=0;a1=1;en=1;
		#10 a0=1;a1=0;en=0;
		#10 a0=1;a1=0;en=1;
		#10 a0=1;a1=1;en=0;
		#10 a0=1;a1=1;en=1;

	end
      
endmodule

