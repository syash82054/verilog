module three_bit_asynchronous_up_counter_tb;

reg clk;
wire a,b,c;

three_bit_asynchronous_up_counter uut(
	.clk(clk),
	.a(a),
	.b(b),
	.c(c)
);

initial begin
	$dumpfile("three_bit_asynchronous_up_counter.vcd");
	$dumpvars(0, three_bit_asynchronous_up_counter_tb);

	clk = 0;
	$monitor("time = %t|clk=%b|a=%b|b=%b|c=%b",$time,clk,a,b,c);
	#100 
	$finish;
end
always #5 clk = ~clk;
endmodule
