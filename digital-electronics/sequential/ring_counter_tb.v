module ring_counter_tb;

reg clk,ori;
wire [3:0] q;

ring_counter uut(
.clk(clk),
.ori(ori),
.q(q)
);

initial begin
$dumpfile("ring_counter.vcd");
$dumpvars(0,ring_counter_tb);

$monitor("time = %t|clk = %b|ori = %b|q = %b",$time,clk,ori,q);

clk = 0;
ori = 0;
#10 ori = 1;

#60

ori = 0;
#10 ori = 1;

#40

$finish;
end
always #5 clk = ~clk;
endmodule

