`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2020 22:02:23
// Design Name: 
// Module Name: lamprob
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


module lamprob(input l, input t, input p, input s, output wire ok, output wire alert, output wire danger
    );
    assign ok = l + t + p ;
    wire al = ~l * ~t * p + ~l * t * ~p + l * ~t * ~p;
    assign alert = ~al;
    assign danger = ~(~l * t * p + l * ~t * p + l *t * ~p + l * t * p * ~s);    
endmodule
