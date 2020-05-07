`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2020 22:59:17
// Design Name: 
// Module Name: mux
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


module mux(input [3:0] a,
    input [3:0] b,
    input [3:0] c, 
    input [3:0] d, 
    input [1:0] ch,
    output [3:0] o);
    wire w;
    wire x;
    wire y;
    wire z;
    assign w = (~ch[0]) &  (~ch[1]);
    assign x = (~ch[0]) &  ch[1];
    assign y = ch[0] &  (~ch[1]);
    assign z = ch[0] &  ch[1];
    assign o = a * w + x * b + y * c + z * d;
endmodule
