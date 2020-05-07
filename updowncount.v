`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2020 22:47:38
// Design Name: 
// Module Name: updowncount
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

//We assume 0 is for up and 1 is for down
module updowncount(input clk, input updwn, input [3:0] load,
    input clr, input prst, output reg [3:0] q);
    always @(posedge clk, posedge clr, posedge prst)
        begin
        if(clr == 1'b1)
           q <= 3'b0;
         else if(prst == 1'b1)
            q <= load;
         else if(updwn == 1'b0)
            q <= q + 1;
         else if(updwn == 1'b1)
            q <= q - 1;
         end 
endmodule
