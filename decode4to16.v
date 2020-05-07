`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2020 21:36:28
// Design Name: 
// Module Name: decode4to16
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


module decode4to16( output [15:0] y, input [3:0] x
    );
    decoder3to8 a1 (y[7:0] , ~x[2] ,x[2:0]); 
    decoder3to8 a2 (y[15:8] , x[2] ,x[2:0]); 
endmodule
