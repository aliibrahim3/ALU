
module alu(a,b,sel,y);
input [3:0] a;
input [3:0] b;
input [3:0] sel;
output reg [5:0] y;


always @(*) begin
    if((sel &  4'b1000) == 4'b0000) begin
        case(sel)
        4'b0000: y = $signed(a) + 1;
        4'b0001: y = $signed(a) - 1;
        4'b0010: y = $signed(a) << 1;
        4'b0011: y = $signed(b) + 1;
        4'b0100: y = $signed(b) - 1;
        4'b0101: y = $signed(b) << 1;
        4'b0110: y = $signed(a) + $signed(b);
        4'b0111: y = $signed(a) << 2;
        default:;
        endcase
    end
    else begin
        case (sel)
        4'b1000: y = ~a;
        4'b1001: y = ~b;
        4'b1010: y = a & b;
        4'b1011: y = a | b;
        4'b1100: y = a ^ b;
        4'b1101: y = ~(a ^ b);
        4'b1110: y = ~(a & b);
        4'b1111: y = ~(a | b);
        default:;
        endcase
    end
end
endmodule
