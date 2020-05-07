`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2020 19:54:37
// Design Name: 
// Module Name: testbench
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


module CombCkt_tb;
 reg a, b;
 wire c;

firstcode uut(
 .A(a),.B(b),.C(c) );

 initial
 begin
 a = 0; b = 1;
 #10
 a = 0; b = 0; 
 #10
 a = 1; b = 0;
 #10
 a = 1; b = 1; 
 end
 endmodule 
