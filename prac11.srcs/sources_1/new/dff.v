`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 08:10:29
// Design Name: 
// Module Name: dff
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


module dff(
    input d, clk,
    output reg q, qbar
    );
initial begin
    q = 0;
end

always@(posedge clk)
begin
    q <= d;
end
endmodule

module johnson(
    input clk,
    output wire q0, q1, q2, q3
    );

dff d1(.d(~q3), .clk(clk), .q(q0));
dff d2(.d(q0), .clk(clk), .q(q1));
dff d3(.d(q1), .clk(clk), .q(q2));
dff d4(.d(q2), .clk(clk), .q(q3));

endmodule
