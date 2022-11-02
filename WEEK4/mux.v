`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 15:21:51
// Design Name: 
// Module Name: mux
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


module mux( input y1,input y2,input y3, input y4, input [1:0]s , output reg y);
always @*
  begin
    case(s)
      2'b00:y=y1;
      2'b01:y=y2;
      2'b10:y=y3;
      2'b11:y=y4;
    endcase
  end
endmodule
