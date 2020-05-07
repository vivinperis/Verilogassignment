`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2020 10:27:24
// Design Name: 
// Module Name: testmodule
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


module testmodule;
    reg l;
    reg t;
    reg p;
    reg s;
    wire ok;
    wire danger;
    wire alert;
    lamprob uut(
    .l(l) ,
    .t(t) ,
    .p(p) ,
    .s(s) ,
    .ok(ok) ,
    .danger(danger) ,
    .alert(alert) 
    );
    initial begin
      l=1;
      t=0;
      p=0;
      s=0;
    end
endmodule
