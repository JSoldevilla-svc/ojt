module tb;

reg [15:0] a = 16'b1111111111111111;
reg [15:0] b = 16'b1111111111111110;
reg [15:0] c = 16'b1111111111111111;
reg [15:0] d = 16'b1111111111111110;

//blocking
reg [15:0] temp;
initial begin
$display("a : %0d and b :%0d", a,b);
temp = a;
a = b;
b = temp;
#10
$display("a : %0d and b :%0d", a,b);
end

//non-blocking
initial begin
$display("c : %0d and d :%0d", c,d);
c <= d;
d <= c;
#10
$display("c : %0d and d :%0d", c,d);
end

endmodule
