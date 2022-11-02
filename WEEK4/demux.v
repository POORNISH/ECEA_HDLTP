`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 17:13:57
// Design Name: 
// Module Name: demux
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


module demux( input i,input [1:0]s ,output reg y1,output reg y2, output reg y3,  output reg y4);
always @* 
begin
    if (s==2'b00)
    begin
      assign y1=i;
      assign y2=~i;
      assign y3=~i;
      assign y4=~i;
    end
    else if (s==2'b01)
    begin
      assign y1=~i;
      assign y2=i;
      assign y3=~i;
      assign y4=~i;
    end
    else if (s==2'b10)
    begin
      assign y1=~i;
      assign y2=~i;
      assign y3=i;
      assign y4=~i;
    end
     else if (s==2'b11)
    begin
      assign y1=~i;
      assign y2=~i;
      assign y3=~i;
      assign y4=i;
    end

    
end

endmodule