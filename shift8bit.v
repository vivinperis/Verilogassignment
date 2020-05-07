`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2020 22:44:03
// Design Name: 
// Module Name: shift8bit
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


module shift8bit(input clk, input clr, input shift, input ld,input [7:0] din,
                 input si, output reg [7:0] dout);
       always @(posedge clk) begin
       if (clr) 
       dout <= 0;
       else if (ld) 
       dout <= din;
       else if (shift) 
       dout <= { dout[6:0], si };
       end
endmodule
