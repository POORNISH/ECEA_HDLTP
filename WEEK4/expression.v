`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 23:41:15
// Design Name: 
// Module Name: expression
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


module expression(input a, input b, input c , output y , wire t1, wire t2 , wire t3);
and G1 (t1,a,b);
and G2 (t2,a,c);
and G3 (t3, a,b,c);
or G4 (y,t1,t2,t3);
endmodule
