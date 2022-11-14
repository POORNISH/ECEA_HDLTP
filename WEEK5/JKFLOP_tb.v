`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 10:32:31
// Design Name: 
// Module Name: JKFLOP_tb
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


module JKFLOP_tb();
reg J; 
reg K;
reg clk ;
reg reset; 
wire Q;
JKFLOP DUT(J,K,clk,reset,Q);
initial begin
  clk=1;
  forever #50 clk = ~clk;  
end 
initial begin
  reset = 1;
  J <= 1'b1;
  K <= 1'b0;
  #100;
  
  reset = 0;
  J <= 1'b0;
  K <= 1'b1;
  #100;
  J <= 1'b0;
  K <= 1'b0;
  #100;
  J <= 1'b1;
  K <= 1'b0;
  #100;
  J <= 1'b1;
  K <= 1'b1;
  #100;
end
endmodule
