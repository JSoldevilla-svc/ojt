module tb;

reg [15:0] a = 16'b1111111111111111;
reg [15:0] b = 16'b1111111111111110;
reg [15:0] c = 16'b1111111111111111;
reg [15:0] d = 16'b1111111111111110;

//blocking
reg [15:0] temp;
initial begin
temp = a;
a = b;
b = temp;
end

//non-blocking
initial begin
a <= b;
b <= a;
end

endmodule
