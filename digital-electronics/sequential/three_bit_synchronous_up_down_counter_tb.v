module three_bit_synchronous_up_down_counter_tb;

reg m;
reg reset;
reg clk;
wire [2:0] q;

three_bit_synchronous_up_down_counter uut(
.m(m),
.clk(clk),
.q(q),
.reset(reset)
);

initial begin
$dumpfile("three_bit_synchronous_up_down_counter.vcd");
$dumpvars(0,three_bit_synchronous_up_down_counter_tb);

$monitor("time = %t|clk = %b|m = %b|q = %b",$time,clk,m,q);
reset = 1'b1;
clk = 0;
m =0;
#10 reset = 1'b0;
#80;
m = 1'b1;
#80;
$finish;
end
always #5 clk = ~clk;
endmodule






