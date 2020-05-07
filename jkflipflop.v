`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2020 22:25:43
// Design Name: 
// Module Name: jkflipflop
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


module jkflipflop( input clk, input j, input k, input clr, input prst, output reg q);
    always @(posedge clk)
    if(clr == 1'b1)
        q <= 1'b0;
    else if(prst == 1'b1)
        q <= 1'b1;
    else 
        case( { j, k} )
        2'b00:
        q <= q;
        2'b01:
        q <= 1'b0;
        2'b10:
        q <= 1'b1;
        2'b11:
        q <= ~q;
        endcase
endmodule
