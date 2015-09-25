`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:26:24 08/18/2015
// Design Name:   lab1_2
// Module Name:   C:/Users/kerker/NTHU/MS0/logic lab/lab_result/lab1/lab1_2/test_lab1_2.v
// Project Name:  lab1_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab1_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_lab1_2;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	lab1_2 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here


	end
      
endmodule

