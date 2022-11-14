`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 09:28:39
// Design Name: 
// Module Name: DFFLOP
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

// positive edge triggered D flipflop 
// using synchronous reset 
module DFFLOP(input D,input clk,input reset,output reg Q);
always @ (posedge clk)
  begin 
  if (reset == 1'b0)
    Q <= D;
  else 
    Q <= 1'b0;
  end

endmodule
