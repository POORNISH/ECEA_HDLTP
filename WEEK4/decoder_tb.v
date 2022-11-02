`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 20:11:17
// Design Name: 
// Module Name: decoder_tb
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

// 4 to 2 decoder
module decoder_tb;
reg [2:0]eab;
wire  y1;
wire  y2;
wire  y3;
wire  y4;
decoder UUT (.eab(eab),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
initial begin 
// enable high input
eab [2:0] = 3'b101;
#100;
// enable low ab = 00
eab[2:0]=3'b000;
#100;
// enable low ab = 01
eab[2:0]=3'b001;
#100;
// enable low ab = 10
eab[2:0]=3'b010;
#100;
// enable low ab = 11
eab[2:0]=3'b011;
#100;

end
endmodule
