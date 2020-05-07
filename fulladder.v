`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2020 12:34:06
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input [3:0] a , b,
    input cin,
    output [3:0] s,
    output cout
    );
    wire carry0;
    wire carry1;
    wire carry2;
    fulladdibin f1(.a(a[0]),
    .b(b[0]) , .cin(cin), .sum(s[0]), .carry(carry0) );   
    fulladdibin f2(.a(a[1]),                           
    .b(b[1]) , .cin(carry0), .sum(s[1]), .carry(carry1) );
    fulladdibin f3(.a(a[2]),                           
    .b(b[2]) , .cin(carry1), .sum(s[2]), .carry(carry2) );      
    fulladdibin f4(.a(a[3]),                           
    .b(b[3]) , .cin(carry2), .sum(s[3]), .carry(cout) );   
endmodule
