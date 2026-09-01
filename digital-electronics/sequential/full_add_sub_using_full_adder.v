module full_add_sub_using_full_adder(
	input  [3:0] a,
	input  [3:0] b,
	input        m,
	output reg  [3:0] s,
	output reg        c,
	output            v
);
full_adder f1(
.x(a),
.y(b),
.s(s),
.c(c)

always @(*)begin
s = 4'b0000;
c = 1'b0;
case(m)
1'b0:
