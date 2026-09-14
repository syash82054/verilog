module three_bit_asynchronous_up_down_counter(
input clk,
input m,
output reg a,
output reg b,
output reg c);

wire a1,b1,c1,a2,b2,c2;

three_bit_asynchronous_up_counter t1(
.clk(clk),
.a(a1),
.b(b1),
.c(c1)
);

three_bit_asynchronous_down_counter t2(
.clk(clk),
.a(a2),
.b(b2),
.c(c2)
);

 
always @(*) begin
case (m)
1'b0:begin
a = a1;
b = b1;
c = c1;
end
1'b1: begin
a = a2;
b = b2;
c = c2;
end
endcase
end

endmodule
