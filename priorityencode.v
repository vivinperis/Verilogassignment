`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2020 10:19:00
// Design Name: 
// Module Name: priorityencode
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


module priorityencode(
    input [15:0] x,
    output reg [3:0] y
    );
    always @(x) begin
    if (x[15] == 1)
        assign y=4'b1111;
    else if (x[14] ==1)
        assign y = 4'b1110;
    else if (x[13] == 1)
        assign y = 4'b1101;
    else if (x[12] == 1)   
        assign y = 4'b1100;
    else if (x[11] == 1)   
        assign y = 4'b1011;
    else if (x[10] == 1)   
         assign y = 4'b1010;
    else if (x[9] == 1)   
         assign y = 4'b1001;
    else if (x[8] == 1)   
         assign y = 4'b1000;
    else if (x[7] == 1)   
         assign y = 4'b0111; 
    else if (x[6] == 1)   
         assign y = 4'b0110;
    else if (x[5] == 1)   
         assign y = 4'b0101;
    else if (x[4] == 1)   
          assign y = 4'b0100;
    else if (x[3] == 1)   
          assign y = 4'b0011;
    else if (x[2] == 1)   
          assign y = 4'b0010;     
    else if (x[1] == 1)
        assign y = 4'b0001;
    else if (x[0] == 1)
        assign y = 4'b0000;
    end
endmodule
