
module alu(a,b,sel,y);
input signed [3:0] a;
input signed[3:0] b;
input [3:0] sel;
output reg  [5:0] y;


always @(*) begin
    if((sel &  4'b1000) == 4'b0000) begin
        case(sel)
        4'b0000: y = a + 1;
        4'b0001: y =a - 1;
        4'b0010: y = a << 1;
        4'b0011: y = b + 1;
        4'b0100: y = b- 1;
        4'b0101: y = b << 1;
        4'b0110: y = a + b;
        4'b0111: y = a << 2;
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
