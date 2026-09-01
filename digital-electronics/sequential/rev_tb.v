module rev_tb;

reg x,y,bin;
wire bo,d;

rev uut(
	.x(x),
	.y(y),
	.bin(bin),
	.bo(bo),
	.d(d)
);

initial begin
	$dumpfile("rev.vcd");
	$dumpvars(0,rev_tb);

	for(integer k = 0; k < 8; k = k + 1)begin
		{x,y,bin} = k;
		#10;
		$display("x = %b|y = %b|bin = %b|d = %b|bo = %b"
			,x,y,bin,d,bo);
	end
	$finish;
end
endmodule
