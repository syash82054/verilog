module three_bit_synchronous_down_counter(
input clk,
input reset,
output [2:0] q
);

wire [1:0] q_bar;

t_FF t1(
.t(1'b1),
.clk(clk),
.reset(reset),
.q_bar(q_bar[0]),
.q(q[0])
);

t_FF t2(
.t(q_bar[0]),
.clk(clk),
.reset(reset),
.q_bar(q_bar[1]),
.q(q[1])
);

t_FF t3(
.t(q_bar[0]&q_bar[1]),
.clk(clk),
.reset(reset),
.q(q[2])
);

endmodule
