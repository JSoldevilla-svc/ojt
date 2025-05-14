`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 09:33:26
// Design Name: 
// Module Name: mux
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


module mux(
    input a,b,sel,
    output c
    );
    
assign c = (sel == 1'b0) ? a : b;

endmodule

module mux41(
    input a, b, c, d,
    output y,
    input [1:0] sel
    );

wire t1, t2;

mux m1(.a(a), .b(b), .sel(sel[0]), .c(t1));
mux m2(.a(c), .b(d), .sel(sel[0]), .c(t2));
mux m3(.a(t1), .b(t2), .sel(sel[1]), .c(y));

endmodule

module mux81(
    input a,b,c,d,e,f,g,h,
    output y,
    input [2:0] sel
    );
    
wire t1, t2;

mux41 mf1(.a(a), .b(b), .c(c), .d(d), .sel(sel[1:0]), .y(t1));
mux41 mf2(.a(e), .b(f), .c(g), .d(h), .sel(sel[1:0]), .y(t2));
mux mf3(.a(t1), .b(t2), .sel(sel[2]), .c(y));

endmodule