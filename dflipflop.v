`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2020 10:35:47
// Design Name: 
// Module Name: dflipflop
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


module dflipflop(input d, input clk, input res, input pre, output reg q);
    always @(posedge clk)
    begin
    if(res == 1'b1)
        q <= 1'b0;
    else if( pre == 1'b1)
        q <= 1'b1;
    else 
        q <= d;
    end
endmodule
