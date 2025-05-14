`timescale 1ns / 1ps

module fsm(
    input clk, rst, din,
    output reg dout
    );
    
parameter idle = 0;
parameter s0 = 1;
parameter s1 = 2;

reg [1:0] state = idle, nstate = idle;

//reset logic
always@ (posedge clk)
    begin
        if(rst == 1'b1)
            state <= idle;
        else
            state <= nstate;
    end

//next state logic
always@(state,din)
    begin
        case(state)
        idle: begin
            nstate = s0;
            end
        s0: begin
            if(din == 1'b1)
                nstate = s1;
            else
                nstate = s0;
            end
            
        s1: begin
            if(din == 1'b1)
                nstate = s0;
            else
                nstate = s1;
            end
        
        default: nstate = idle;
        endcase
    end
    
//output logic
always@(state)
    begin
        case(state)
            idle: dout = 1'b0;
            s0: dout = 1'b0;
            s1: dout = 1'b1;
            default: dout = 1'b0; 
        endcase
    end
endmodule
