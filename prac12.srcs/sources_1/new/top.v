`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 09:04:53
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


module ha(
    input a, b,
    output s, c
    );
    
assign s = a ^ b;
assign c = a & b;

endmodule

module fa(
    input a, b, cin,
    output s, cout
    );
    
wire t1, t2, t3;

ha h1(.a(a), .b(b), .s(t1), .c(t2));
ha h2(.a(t1), .b(cin), .s(s), .c(t3));

assign cout = t2 | t3;

endmodule

module ripple(
    input [3:0] a, b,
    input cin,
    output [3:0] s, cout
    );

fa f1(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(cout[0]));
fa f2(.a(a[1]), .b(b[1]), .cin(cout[0]), .s(s[1]), .cout(cout[1]));
fa f3(.a(a[2]), .b(b[2]), .cin(cout[1]), .s(s[2]), .cout(cout[2]));
fa f4(.a(a[3]), .b(b[3]), .cin(cout[2]), .s(s[3]), .cout(cout[3]));

endmodule