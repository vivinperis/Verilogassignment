`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 15:49:45
// Design Name: 
// Module Name: paritycheck
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


module paritycheck( x , clk, y);
    input x , clk;
    output reg y;
    reg oddeven;
    parameter even = 0, odd = 1;
    always @(posedge clk)
    case(oddeven)
    odd : begin
          y <= x ? 0 : 1;
          oddeven <= x ? even : odd;
          end
    even : begin
            y <= x ? 1 : 0;
            oddeven <= x ? odd : even;
            end
    default: oddeven <= even;
    endcase
endmodule
