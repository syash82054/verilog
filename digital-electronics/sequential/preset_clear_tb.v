module preset_clear_tb;

reg s,r,clk,p,c;
wire q,q_bar;

preset_clear uut(
	.s(s),
	.r(r),
	.clk(clk),
	.p(p),
	.q(q),
	.c(c),
	.q_bar(q_bar)
);

initial begin
	$dumpfile("preset_clear.vcd");
	$dumpvars(0, preset_clear_tb);

	clk = 0;
	
	$monitor("time = %t|clk = %b|p = %b|c = %b|s = %b|r = %b|q = %b|q_bar = %b"
		,$time,clk,p,c,s,r,q,q_bar);
		
	for(integer k = 0; k < 16; k = k+1)begin
		{p,c,s,r} = k;
		#10;
	end

	

	$finish;
end

//independent clock generation
always #5 clk = ~clk; 
endmodule
