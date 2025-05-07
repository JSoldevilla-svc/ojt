`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 13:55:34
// Design Name: 
// Module Name: dff2
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

module dff2(
    input din, rst, clk,
    output reg y,
    output reg ynot
    );
    
always@(posedge clk, posedge rst)
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
