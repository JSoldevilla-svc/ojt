`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 07:23:55
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
input a,b,
output y
);
 
supply1 vdd;
supply0 gnd;
wire t1;
 
pmos p1 (t1, gnd, a);
pmos p2 (y, t1, b);
 
nmos n1 (y, vdd, a);
nmos n2 (y, vdd, b);

endmodule
