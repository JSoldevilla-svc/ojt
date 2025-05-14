`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 15:22:44
// Design Name: 
// Module Name: dpram
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


module dpram(
    input clk, we,
    input [7:0] addr1, addr2, din1,
    output [7:0] dout1, dout2
    );
    
reg [7:0] mem [255:0];

blk_mem_gen_0 b1(addr1,addr2,clk,clk,din1, we);

always@(posedge clk)
begin
    mem[addr1] <= din1;
    mem[addr2] <= din1;
end

endmodule
