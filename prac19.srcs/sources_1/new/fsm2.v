`timescale 1ns / 1ps

module fsm2(
    input clk, rst, din,
    output reg dout
    );
    
parameter idle = 0;
parameter s0 = 1, s1 = 2, s2 = 3;
reg [1:0] state = idle;

always@(posedge clk)
begin
    if(rst)
        begin
            state <= idle;
            dout <= 1'b0;
        end
    else
        begin
            case(state)
            idle: begin
                dout <= 1'b0;
                state <= s0;
            end
            
            s0: begin
                if(din)
                    begin
                        dout <= 0;
                        state <= s1;
                    end
                else
                     begin
                        dout <= 0;
                        state <= s2;
                    end
                end
                
            s1: begin
                if(din)
                    begin
                        dout <= 1;
                        state <= s1;
                    end
                else
                     begin
                        dout <= 1;
                        state <= s2;
                    end
                end
                
            s2: begin
                if(din)
                    begin
                        dout <= 0;
                        state <= s1;
                    end
                else
                     begin
                        dout <= 0;
                        state <= s2;
                    end
                end
            endcase
        end    
end
endmodule
