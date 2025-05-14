`timescale 1ns / 1ps

module demux14(
    input y,
    input [1:0] sel,
    output reg [3:0] z
    );
    
always@(*)
begin
    case(sel)
    
    2'b00: z <= {3'b00, y};
    2'b01: z <= {2'b00, y, 1'b0};
    2'b10: z <= {1'b00, y, 2'b00};
    2'b11: z <= {y, 3'b00};
    
    default: z = 0;
    
    endcase
    
end
endmodule
