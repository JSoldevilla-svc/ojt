`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 07:35:29
// Design Name: 
// Module Name: or2
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


module or2(
    input a, b,
    output y
    );
    
supply1 vdd;
supply0 gnd;
wire t1, t2;

pmos p1(t1, vdd, a);
pmos p2(t2, t1, b);

nmos n1(t2, gnd, a);
nmos n2(t2, gnd, b);

pmos p3(y, vdd, t2);
nmos n3(y, gnd, t2);

endmodule
