`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2022 23:05:11
// Design Name: 
// Module Name: dataflow2bitadder
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


module dataflow2bitadder(  x0,x1,y0,y1,cin,sum0,sum1,carry);
  input x0,x1,y0,y1;
  input cin;
  output sum0,sum1;
  output carry;
  wire s0,s1,c0,c1,c2,c3,c4;
 
      assign s0= x0 ^ y0 ;
      assign Sum0 = s0 ^ cin;
      assign c1 = cin & sum0;
      assign  c0 = x0 & y0 ;
      assign c2 = c0|c1;
      assign s1= x1 ^ y1 ;
      assign Sum1 = s1 ^ c2;
      assign c4 = c2 & s1;
      assign  c3 = x1 & y1 ;
      assign Carry = c3|c4;
      
endmodule
