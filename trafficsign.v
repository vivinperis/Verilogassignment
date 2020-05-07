`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2020 16:14:17
// Design Name: 
// Module Name: trafficsign
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


module trafficsign(
    input clk,
    output reg [2:0] light
    );
    parameter s0 = 0, s1 = 1, s2 = 2;
    parameter r=3'b100, b=3'b010, g=3'b001;
    reg [0:1] state;
    always @(posedge clk)
        case(state)
        s0:begin
            light <=  b;
            state <= s1;
            end
        s1:begin
            light <= g;
            state <= s2;
            end
        s2:begin
            light <= r;
            state <= s0;
            end
        default: begin
            light <= r;
            state <= s0;
            end
         endcase
endmodule
