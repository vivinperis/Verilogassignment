`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2020 11:10:02
// Design Name: 
// Module Name: tflipflop
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


module tflipflop(input clk, input d, input t, input pre,
     input clr, output reg q);
    always @ (negedge clk, posedge pre, posedge clr)
        if(pre == 1'b1)
            q <= 1'b1;
        else if (clr == 1'b1)
            q <= 1'b0;
        else if(t == 1'b1)
         q  <= ~d;
        else 
        q <= d;
endmodule
