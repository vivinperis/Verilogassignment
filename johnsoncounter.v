`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2020 21:17:35
// Design Name: 
// Module Name: johnsoncounter
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


module johnsoncounter(input clk, input reset, input [3:0] load, input din, output [7:0] out);
    reg [8:0] q;
    always @(posedge clk)
    begin 
    if(reset)
        q=8'd0;
    else if(din)
         q = load;
    else
 	begin 
 	    q[7]<=q[6];
        q[6]<=q[5];
        q[5]<=q[4];
        q[4]<=q[3];
 		q[3]<=q[2];
  		q[2]<=q[1];
  		q[1]<=q[0];
   		q[0]<=(~q[7]);
 	end
end
assign out=q;  
endmodule
