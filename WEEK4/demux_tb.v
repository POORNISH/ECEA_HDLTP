`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 18:07:21
// Design Name: 
// Module Name: demux_tb
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


module demux_tb;
reg i;
reg [1:0]s;
wire  y1;
wire  y2;
wire  y3;
wire  y4;
demux UUT (.i(i),.s(s),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
initial begin 
//initially selecting s=00
i=1;
s=2'b00;
#100;
// selecting s=01
i=1;
s=2'b01;
#100;
// selecting s=10
i=1;
s=2'b10;
#100;
//selecting s=11
i=1;
s=2'b11;
#100;

end

endmodule
