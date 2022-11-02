`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 19:58:45
// Design Name: 
// Module Name: decoder
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

// 2 to 4 decoder
module decoder(input [2:0]eab , output reg y1,output reg y2, output reg y3, output reg y4 );
always @* 
begin
    if (eab[2]==1)
    begin
      assign y1=1;
      assign y2=1;
      assign y3=1;
      assign y4=1;
    end
    else if (eab[1:0]==2'b00)
    begin
      assign y1=0;
      assign y2=1;
      assign y3=1;
      assign y4=1;
    end
    else if (eab[1:0]==2'b01)
    begin
      assign y1=1;
      assign y2=0;
      assign y3=1;
      assign y4=1;
    end
     else if (eab[1:0]==2'b10)
    begin
      assign y1=1;
      assign y2=1;
      assign y3=0;
      assign y4=1;
    end
        if (eab[1:0]==2'b11)
    begin
      assign y1=1;
      assign y2=1;
      assign y3=1;
      assign y4=0;
    end

    
end
endmodule
