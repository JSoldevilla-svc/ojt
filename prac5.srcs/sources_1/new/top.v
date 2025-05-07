`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 12:23:19
// Design Name: 
// Module Name: top
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


module top(
    input clk, rst,
    input ld,
    input [3:0] ldvalue,
    output [3:0] out
    );
    
 reg [3:0] temp;
 
 initial begin
 temp = 0;
 end
 
 always@(posedge clk)
 begin
    if (rst ==1)
        begin
            temp <= 4'b0000;
        end
    else
        begin
            if (ld == 1'b1)
                begin
                 temp <= ldvalue;
                end
            else
                begin
                 temp <= temp + 1;
                end
        end
 end

assign out = temp;

endmodule
