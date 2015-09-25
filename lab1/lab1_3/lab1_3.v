`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:56 08/19/2015 
// Design Name: 
// Module Name:    lab1_3 
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
module lab1_3(
		en,a0,a1,d0,d1,d2,d3
    );
input en,a0,a1;
output d0,d1,d2,d3;

assign d0=(en&~a1&~a0);
assign d1=(en&~a1&a0);
assign d2=(en&a1&~a0);
assign d3=(en&a1&a0);

endmodule
