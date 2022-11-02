`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 22:35:15
// Design Name: 
// Module Name: encoders_tb
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
module encoders_tb;
reg [3:0]d;
//wire e;
wire y;
wire z;
encoders UUT (.d(d),.y(y),.z(z));
initial begin 
// input as 0001 encoded as e=0,y=0,z=0
d = 4'b0001;
#100;
// input as 0010 encoded as e=0,y=0,z=1
d = 4'b0010;
#100;
// input as 0100 encoded as e=0,y=1,z=0
d = 4'b0100;
#100;
// input as 1000 encoded as e=0,y=1,z=1
d = 4'b1000;
#100;
end
endmodule
