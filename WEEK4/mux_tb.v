`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 16:04:04
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg y1;
reg y2;
reg y3;
reg y4;
reg [1:0]s ;
wire y;
mux UTT (.y1(y1),.y2(y2),.y3(y3),.y4(y4),.s(s),.y(y));
initial begin
// block for selecting y1
  y1=1;
  y2=0;
  y3=0;
  y4=0;
  s= 2'b00;
  #100;
  // block for selecting y2
  y1=1;
  y2=1;
  y3=0;
  y4=0;
  s= 2'b01;
  #100;
  // block for selecting y3
  y1=1;
  y2=0;
  y3=0;
  y4=0;
  s= 2'b10;
  #100;
  // block for selecting y4 
  y1=1;
  y2=0;
  y3=0;
  y4=1;
  s= 2'b11;
  #100;
end
endmodule
