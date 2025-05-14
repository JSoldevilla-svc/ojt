`timescale 1ns / 1ps


module tb2(
    );
    
reg y;
reg [1:0] sel;
wire [3:0] z;

initial begin
y = 0;
sel = 0;
end

demux14 dut(y, sel, z);

always #10 y = ~y;

always #40 sel = $urandom();

initial begin
#600;
$finish;
end

endmodule
