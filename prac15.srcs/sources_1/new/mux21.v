`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 13:17:53
// Design Name: 
// Module Name: mux21
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


module mux21(
    input a,b,sel,
    output reg y
    );
always@(*)
begin
    case(sel)
        1'b0: y = a;
        1'b1: y = b;
    endcase
end
endmodule

module mux41(
    input a,b,c,d,
    input [1:0] sel,
    output reg y
    );

always@(*)
begin
    case(sel)
        2'b00: y = a;
        2'b01: y = b;
        2'b10: y = c;
        2'b11: y = d;
    endcase
end
endmodule
