`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2020 19:41:54
// Design Name: 
// Module Name: firstcode
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


module encoder(in,out)(
    input in[1:0],
    input reg out[3:0],
    output C
       );
    always @(in)
    begin
    case(in)
    2'b00 : out = 4'b0001
    2'b01 : out = 4'b0010
    2'b10 : out = 4'b0100
    2'b11 : out = 4'b1000
    default : out = 4'b0000
    endcase
    end
endmodule
