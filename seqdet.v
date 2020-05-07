`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2020 16:01:14
// Design Name: 
// Module Name: seqdet
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


module seqdet(input rst , input clk , input ip , output reg op, output reg [2:0] nxt_state);
    parameter [2:0] s0 = 3'b000;
    parameter [2:0] s1 = 3'b001;
    parameter [2:0] s2 = 3'b010;
    parameter [2:0] s3 = 3'b011;
    parameter [2:0] s4 = 3'b100;
    parameter [2:0] s5 = 3'b101;
    parameter [2:0] s6 = 3'b110;
    parameter [2:0] s7 = 3'b111;
    always @(posedge clk, negedge rst)
    begin
        if(~rst)
            nxt_state = s0;
         else
         begin
          case(nxt_state)
          s0:
          begin
          if (ip)
          begin
              nxt_state = s1;
              op = 1'b0;
          end
          else
          begin
              nxt_state = s4;
              op = 1'b0;
          end
          end
          s1:
          begin
          if (ip)
          begin
              nxt_state=s1;
              op = 1'b0;
          end
          else
          begin
              nxt_state=s2;
              op = 1'b0;
          end
          end
          s2:
          begin
          if (ip)
          begin
             nxt_state=s5;
             op = 1'b0;
          end
          else
          begin
             nxt_state=s3;
             op = 1'b0;
          end
          end
          s3:
          begin
          if (ip)
          begin
             nxt_state=s7;
             op=1'b0;
          end
          else
          begin
              nxt_state=s4;
              op=1'b0;
          end
          end
          s4:
          begin 
          if (ip)
          begin
             nxt_state=s5;
             op=1'b0;
          end
          else
          begin
              nxt_state=s4;
              op=1'b0;
          end
          end
          s5:
          begin
          if (ip)
          begin
             nxt_state=s6;
             op=1'b0;
          end
          else
          begin
              nxt_state=s2;
              op=1'b0;
          end
          end
          s6:
            begin
            if (ip)
            begin
               nxt_state=s1;
               op=1'b0;
            end
            else
            begin
               nxt_state=s7;
               op=1'b0;
            end
           end
           s7:
           begin
               if (ip)
               begin
                   nxt_state=s7;
                   op=1'b1;
               end
               else
               begin
                   nxt_state=s7;
                   op=1'b1;
               end
              end
          default:
          begin
               nxt_state=s0;
               op=1'b0;
          end
          endcase
          end
          end
    endmodule
