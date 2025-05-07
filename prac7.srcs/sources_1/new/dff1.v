`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 13:50:24
// Design Name: 
// Module Name: dff1
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


module dff1(
    input din, rst, clk,
    output reg y,
    output reg ynot
    );
    
always@(posedge clk)
begin
    if (rst == 1)
    begin
        y <= 0;
    end
    
    else
    begin
        y  <= din;
        ynot <= ~din;
    end
end
endmodule
