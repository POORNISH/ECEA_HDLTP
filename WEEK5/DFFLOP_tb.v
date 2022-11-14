`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 09:29:31
// Design Name: 
// Module Name: DFFLOP_tb
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


module DFFLOP_tb();
 reg D; 
 reg clk ;
 reg reset; 
 wire Q;
DFFLOP DUT(D,clk,reset,Q);
initial begin
  clk=1;
  forever #50 clk = ~clk;  
end 
initial begin
  reset = 1;
  D <= 0;
  #100;
  
  reset = 1;
  D <= 1;
  #100;
  
  reset = 0;
  D <= 0;
  #100;
  
  reset = 0;
  D <= 1;
  #100;
end
endmodule
