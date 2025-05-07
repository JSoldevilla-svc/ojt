`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 15:31:08
// Design Name: 
// Module Name: fs
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


module fs(
    input a, b, bin,
    output y, z
    );
    
xor x1(t1, a, b);
and a1(t2, ~a, b);
xor x2(y, bin, t1);
and a2(t3, bin, ~t1);
or o1(z, t3, t2);

endmodule
