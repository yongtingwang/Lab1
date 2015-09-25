`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:10 08/18/2015
// Design Name:   fulladder
// Module Name:   C:/Users/kerker/NTHU/MS0/logic lab/lab_result/lab1/lab1_1/test_fulladder.v
// Project Name:  lab1_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fulladder;

	// Inputs
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

      #10 a=0;b=0;c_in=0;
		#10 a=0;b=0;c_in=1;
		#10 a=0;b=1;c_in=0;
		#10 a=0;b=1;c_in=1;
		#10 a=1;b=0;c_in=0;
		#10 a=1;b=0;c_in=1;
		#10 a=1;b=1;c_in=0;
		#10 a=1;b=1;c_in=1;

	end
      
endmodule

