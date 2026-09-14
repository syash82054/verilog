module three_bit_asynchronous_down_counter(
	input clk,
	output a,
	output b,
	output c
);
wire a1,b1;

jk_FF j1(
.j(1'b1),
.k(1'b1),
.clk(clk),
.q(a1),
.q_bar(a)
);

jk_FF j2(
.j(1'b1),
.k(1'b1),
.clk(a1),
.q(b1),
.q_bar(b)
);

jk_FF j3(
.j(1'b1),
.k(1'b1),
.clk(b1),
.q_bar(c)
);

endmodule
//output starts at 110 because it require a jk starting with q=1'b1
