module johnson_counter_tb;

reg clk,clr;
wire [3:0] q;

johnson_counter uut(
.clk(clk),
.clr(clr),
.q(q)
);

initial begin
$dumpfile("johnson_counter.vcd");
$dumpvars(0, johnson_counter_tb);

$monitor("time = %t|clr = %b|clk = %b|q = %b",$time,clr,clk,q);

clk = 0;
clr = 0;
#10 clr = 1;
#80
clr = 0;
#10 clr = 1;
#80

$finish;
end
always #5 clk = ~clk;
endmodule
