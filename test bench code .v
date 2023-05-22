
//test bench code (hint:the values of the inputs a and b in this code are a case from three cases shown in pdf file )
//-----------------------------------------------------------------------------------------------------

module alu_tb;
reg [3:0] a;
reg [3:0] b;
reg [3:0] sel;
wire [5:0] y;


integer i;
alu uut (
.a(a),
.b(b),
.sel(sel),
  .y(y)
);
initial begin
    a = 4'b0101;  //5
    b = 4'b0111;  //7
    sel = 4'b0000;
    #10;
    for(i=0;i<16;i=i+1)
    begin
        if((sel &  4'b1000) == 4'b0000) begin
          $display("a = %b", a);
          $display("b = %b", b);
          $display("sel = %b", sel);
        $display("y = %b", y);
         
       
        sel = sel + 4'b0001;
        #10;
        end
        else begin
          $display("a = %b", a);
          $display("b = %b", b);
          $display("sel = %b", sel);
        $display("y = %b", y);
       
        sel = sel + 4'b0001;
        #10;
        end
    end
end
endmodule

