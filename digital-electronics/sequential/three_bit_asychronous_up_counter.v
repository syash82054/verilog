module three_bit_asynchronous_up_counter(
	input clk,
	output a,
	output b,
	output c
);
jk_FF j1(
	.j(1'b1),
	.k(1'b1),
	.clk(clk),
	.q(a)
);

jk_FF j2(
	.j(1'b1),
	.k(1'b1),
	.clk(a),
	.q(b)
);

jk_FF j3(
	.j(1'b1),
	.k(1'b1),
	.clk(b),
	.q(c)
);

endmodule
