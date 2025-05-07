`timescale 1ns / 1ps

module mux(
    input a,b,c,d,
    input [2:0] sel,
    output reg y, ynot
    );
    
always@(*)
begin
case(sel)
    2'b00:
    begin
        y = a;
        ynot = ~a;
    end
    
    2'b01:
    begin
        y = b;
        ynot = ~b;
    end
    
    2'b10:
    begin
        y = c;
        ynot = ~c;
    end
    
    2'b11:
    begin
        y = d;
        ynot = ~d;
    end
    
    default:
    begin
        y = a;
        ynot = ~a;
    end
endcase
end

endmodule
