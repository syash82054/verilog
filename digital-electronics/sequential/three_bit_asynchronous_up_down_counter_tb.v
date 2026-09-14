module three_bit_asynchronous_up_down_counter_tb;

reg clk,m;
wire a,b,c;

three_bit_asynchronous_up_down_counter uut(
        .clk(clk),
	.m(m),
        .a(a),
        .b(b),
        .c(c)
);

initial begin
        $dumpfile("three_bit_asynchronous_up_down_counter.vcd");
        $dumpvars(0, three_bit_asynchronous_up_down_counter_tb);

        clk = 0;
	m = 0;
        $monitor("time = %t|clk=%b|m = %b|a=%b|b=%b|c=%b",$time,clk,m,a,b,c);
        #100 
        $finish;
end
always #5 clk = ~clk;
always #50 m = ~m;
endmodule



