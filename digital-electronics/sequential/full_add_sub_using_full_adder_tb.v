module full_add_sub_using_full_adder_tb;

reg  [3:0] a, b;
reg        m;
wire [3:0] s_d;
wire       c_b,v;

full_add_sub_using_full_adder uut(
	.m(m),
	.a(a),
	.b(b),
	.s_d(s_d),
	.c_b(c_b),
	.v(v)
);

initial begin
	$dumpfile("full_add_sub_using_full_adder.vcd");
	$dumpvars(0,full_add_sub_using_full_adder_tb);

	for(integer k = 0; k < 512; k = k + 1)begin
	{m,a,b} = k;
	#10;
	$display("m = %b|a = %b|b = %b|s_d= %b|c_b = %b|v = %b"
		,m,a,b,s_d,c_b,v);
	end
	$finish;
end
endmodule
