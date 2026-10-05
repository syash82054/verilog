module three_bit_synchronous_up_counter_tb;

reg reset;
reg clk;
wire [2:0] q;

three_bit_synchronous_up_counter uut(
.clk(clk),
.q(q),
.reset(reset)
);

initial begin
$dumpfile("three_bit_synchronous_up_counter.vcd");
$dumpvars(0,three_bit_synchronous_up_counter_tb);

$monitor("time = %t|clk = %b|q = %b",$time,clk,q);
reset = 1'b1;
clk = 0;
#10 reset = 1'b0;
#100;
$finish;
end
always #5 clk = ~clk;
endmodule
