module johnson_counter(
input clk,
input clr,
output [3:0] q
);

d_FF d1(
.d(q[3]),
.clk(clk),
.clr(clr),
.q(q[0])
);

d_FF d2(
.d(q[0]),
.clk(clk),
.clr(clr),
.q(q[1])
);

d_FF d3(
.d(q[1]),
.clk(clk),
.clr(clr),
.q(q[2])
);

d_FF d4(
.d(q[2]),
.clk(clk),
.clr(clr),
.q_bar(q[3])
);

endmodule
