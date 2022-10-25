`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2022 00:19:15
// Design Name: 
// Module Name: Behavioural_2bitadder
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


module Behavioural_2bitadder(x0,x1,y0,y1,cin,sum0,sum1,carry);
  input x0,x1,y0,y1;
  input cin;
  output sum0,sum1;
  output carry;
  wire s0,s1,c0,c1,c2,c3,c4;
  
  always@(negedge clk_in)
  begin
  
  if (x0==y0)
    s0=0;
  else
    s0=1;
 
  if(x0==y0==1)
          c1=1;
  else
          c1=0;
  if (cin==s0)
       sum0=0;
  else
         sum0=1;
  if (x1==y1)
         s1=0;
         
  else
         s1=1;
   if(x1==y1==1)
             carry=1;
         else
             carry=0;
  if (c1==s1)
       sum1=0;
  else
         sum1=1;
            
end
endmodule

