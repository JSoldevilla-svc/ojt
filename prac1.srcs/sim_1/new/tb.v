`timescale 1ns / 1ps

module tb();

reg a, b;
wire s, c;

halfadder dut (a,b,s,c);

initial begin
a = 1;
b = 1;
#10
a = 0;
b = 1;
#10
a = 1;
b = 0;
#10
a = 0;
b = 0;
end

endmodule
