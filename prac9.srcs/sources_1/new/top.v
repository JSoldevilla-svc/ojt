`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 15:23:29
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
    input a, b ,c,
    output y, z
    );
    
wire t1, t2, t3;

xor x1(t1, a, b);
xor x2(y, t1, c);
and a1(t2, a, b);
and a2(t3, c, t1);
or o1(z, t3, t2);
 
endmodule
