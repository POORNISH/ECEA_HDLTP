`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 20:41:47
// Design Name: 
// Module Name: encoders
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

//4 to 2 encoder
module encoders(input [3:0]d , output  y , output z);
or  G1 (y,d[2],d[3]);
or  G2 (z,d[1],d[3]);
//or #100 G3 (e,d[0],d[1],d[2],d[3]);

endmodule
