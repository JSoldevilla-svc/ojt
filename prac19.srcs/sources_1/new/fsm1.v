`timescale 1ns / 1ps

module fsm1(
    input clk, rst, din,
    output reg dout
    );
    
parameter idle = 0;
parameter s0 = 1, s1 = 2, s2 = 3, s3 = 4, s4 = 5;
reg [2:0] state = idle, nstate = idle;

//reset logic
always@(posedge clk)
begin
    if(rst)
        state <= idle;
    else
        state <= nstate;
end

always@(state, din)
begin
    case(state)
    idle:
    begin
        dout = 1'b0;
        nstate <= s0;
    end
    
    s0:
    begin
        dout <= 1'b0;
        if(din)
            nstate <= s1;
        else
            nstate <= s0;
    end
    
    s1:
    begin
        dout <= 1'b0;
        if(din)
            nstate <= s1;
        else
            nstate <= s2;
    end
    
    s2:
    begin
        dout <= 1'b0;
        if(din)
            nstate <= s1;
        else
            nstate <= s3;
    end
    
    s3:
    begin
        dout <= 1'b0;
        if(din)
            nstate <= s4;
        else
            nstate <= s0;
    end
    
    s4:
    begin
        dout <= 1'b1;
        if(din)
            nstate <= s1;
        else
            nstate <= s0;
    end
    endcase
end
endmodule
