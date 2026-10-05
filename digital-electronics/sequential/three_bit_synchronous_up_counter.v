module three_bit_synchronous_up_counter(
input clk,
input reset,
output [2:0] q
);
wire [2:0]a;

t_FF t1(
.t(1'b1),
.reset(reset),
.clk(clk),
.q(a[0])
);

t_FF t2(
.t(a[0]),
.reset(reset),
.clk(clk),
.q(a[1])
);

t_FF t3(
.t(a[0]&a[1]),
.reset(reset),
.clk(clk),
.q(a[2])
);

assign q[0] = a[0];
assign q[1] = a[1];
assign q[2] = a[2];
endmodule
