`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 10:32:01
// Design Name: 
// Module Name: JKFLOP
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

// positive edge triggered JK flipflop 
// using synchronous reset 
module JKFLOP(input J,input K, clk,input reset,output reg Q);
always @ (posedge clk)
  begin 
  if (reset == 1'b0)
    if (J == 1'b0 && K == 1'b0)
      Q <= Q;
    if (J == 1'b0 && K == 1'b1)
      Q <= 1'b0;
    if (J == 1'b1 && K == 1'b0)
      Q <= 1'b1;
    if (J == 1'b1 && K == 1'b1)
      Q <= ~Q;
  else 
    Q <= 1'b0;
  end
endmodule
