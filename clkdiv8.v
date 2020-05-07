`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2020 22:12:18
// Design Name: 
// Module Name: clkdiv8
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


module clkdiv8(input clk,output reg outclk);
    reg [2:0] c= 3'b000;
    always @(posedge clk)
    begin
        c <= c + 1;
        outclk <= c[2];
     end
endmodule
