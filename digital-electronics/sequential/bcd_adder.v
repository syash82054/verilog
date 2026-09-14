module bcd_adder(
input [3:0] a, b,
output c, 
output [3:0] s
);

wire cout;
wire [3:0] sout;
four_bit_parallel_adder f1(
.x(a[3:0]),
.y(b[3:0]),
.s(sout[3:0]),
.c(cout)
);

assign c = (cout | (sout[3]&sout[2]) | (sout[3]&sout[1]));
assign s = c ? (sout + 4'b0110) : sout;

endmodule


