module ring_counter(
input clk,
input ori,
output [3:0] q
);

d_FF t1(
.d(q[3]),
.clk(clk),
.preset(ori),
.q(q[0])
);

d_FF t2(
.d(q[0]),
.clk(clk),
.clr(ori),
.q(q[1])
);

d_FF t3(
.d(q[1]),
.clk(clk),
.clr(ori),
.q(q[2])
);

d_FF t4(
.d(q[2]),
.clk(clk),
.clr(ori),
.q(q[3])
);

endmodule
