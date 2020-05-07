`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2020 09:47:12
// Design Name: 
// Module Name: fulladdibin
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladdibin(a,b,cin,sum,carry);
	input a,b,cin;
	output sum,carry;
	wire x,y,z;
	xor(sum,a,b,cin);
	and(x,a,b);
	xor(y,a,b);
	and(z,cin,y);
	or(carry,x,z);
endmodule