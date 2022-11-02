`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 23:48:41
// Design Name: 
// Module Name: expression_tb
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


module expression_tb;
reg a;
reg b;
reg c;
wire y;
expression UTT (.a(a),.b(b),.c(c),.y(y));
initial begin
// deterniming output y for all possible input values of a , b , c //
a=0 ; b=0 ; c=0;
#100;
a=0 ; b=0 ; c=1;
#100;
a=0 ; b=1 ; c=0;
#100;
a=0 ; b=1 ; c=1;
#100;
a=1 ; b=0 ; c=0;
#100;
a=1 ; b=0 ; c=1;
#100;
a=1 ; b=1 ; c=0;
#100;
a=1 ; b=1 ; c=1;
#100;
end
endmodule
