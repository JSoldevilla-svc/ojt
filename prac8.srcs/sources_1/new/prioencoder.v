`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 14:33:54
// Design Name: 
// Module Name: prioencoder
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


module prioencoder(
    input [7:0] y,
   output reg a,b,c,d
    );
    
always@(*)
begin
    if (y[7])
        begin
            a = 1; b = 1; c = 1; d =1;
        end
    else if (y[6])
        begin
            a = 1; b = 1; c = 0; d =1;
        end
    else if (y[5])
        begin
            a = 1; b = 0; c = 1; d = 1;
        end
    else if (y[4])
        begin
            a = 1; b = 0; c = 0; d = 1;
        end
    else if (y[3])
        begin
            a = 0; b = 1; c = 1; d =1;
        end
    else if (y[2])
        begin
            a = 0; b = 1; c = 0; d =1;
        end
    else if (y[1])
        begin
            a = 0; b = 0; c = 1; d =1;
        end
    else if (y[0])
        begin
            a = 0; b = 0; c = 0; d =1;
        end
    else 
        begin
            a = 0; b = 0; c = 0; d = 0;
        end
      
end
endmodule
