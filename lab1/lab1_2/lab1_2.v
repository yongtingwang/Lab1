`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:35 08/18/2015 
// Design Name: 
// Module Name:    lab1_2 
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
module lab1_2(
		input a0,a1,a2,a3,b0,b1,b2,b3,
		input cin,
		output s0,s1,s2,s3,
		output cout
		
    );
wire cout_temp0,cout_temp1,cout_temp2;

fulladder f0(
	.a(a0), .b(b0),.c_in(cin), .sum(s0), .c_out(cout_temp0)
);

fulladder f1(
	.a(a1), .b(b1),.c_in(cout_temp0), .sum(s1), .c_out(cout_temp1)
);

fulladder f2(
	.a(a2), .b(b2),.c_in(cout_temp1), .sum(s2), .c_out(cout_temp2)
);

fulladder f3(
	.a(a3), 	.b(b3),	.c_in(cout_temp2), 	.sum(s3), 	.c_out(cout)
);
endmodule


