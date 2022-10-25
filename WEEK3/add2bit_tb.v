`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2022 10:19:46
// Design Name: 
// Module Name: add2bit_tb
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


module add2bit_tb;
  reg x0,x1,y0,y1,cin;
  wire sum0,sum1,carry;
  bit2add DUT (x0,x1 ,y0,y1,cin,sum0,sum1,carry);
  initial
    begin
      $monitor($time,"x0=%b,x1=%b,y0=%b,y1=%b,cin=%b,sum0=%b,sum1=%b,carry=%b",x0,x1,y0,y1,cin,sum0,sum1,carry);
      x0=1; x1=0 ; y0= 1 ;y1= 0 ; cin= 0;
      #5 x0=1; x1=0 ; y0= 1 ;y1= 0 ; cin= 1;
      #5 x0=1; x1=1; y0=1; y1=1; cin=0;
      #5 x0=1; x1=1; y0=1; y1=1; cin=1;
      #5 $finish;
    end
endmodule


   

