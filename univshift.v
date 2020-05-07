`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2020 21:40:30
// Design Name: 
// Module Name: univshift
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


module univshift(input clk, input lin, input rin , input clr ,input [1:0] M,
                input [3:0] parin, output reg [3:0] Q);
                always @(negedge clr or posedge clk)
                    if(!clr)
                        Q <= 4'b0000;
                    else
                        case(M)
                        2'b00 : ;
                        2'b01 : Q <= { Q[2:0] , rin };
                        2'b10 : Q <= { lin , Q[3:1] };
                        2'b11 : Q <= parin;
                        endcase
endmodule
