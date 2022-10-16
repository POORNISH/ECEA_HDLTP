`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2022 10:33:35
// Design Name: 
// Module Name: bit2add
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
// design of HALF adder.
module half_add(a,b,s,c); 
  input a,b;
  output s,c;
 
// gate level design of half adder  
  xor x1(s,a,b);
  and a1(c,a,b);
endmodule :half_add

// 2bit adder using FOUR half adder.
module bit2add(x0,x1,y0,y1,cin,sum0,sum1,carry);

  input x0,x1,y0,y1;
  input cin;
  output sum0,sum1;
  output carry;
  wire s0,s1,c0,c1,c2,c3,c4;
  
  half_add k1 (x0,y0,s0,c0);
  half_add k2 (s0,cin,sum0,c1);
  or o1 (c2,c0,c1);
  
  half_add k3 (x1,y1,s1,c3);
  half_add k4 (s1,c2,sum1,c4);
  or o2 (carry,c3,c4);
  
endmodule
