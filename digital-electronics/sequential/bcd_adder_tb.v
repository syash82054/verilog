module bcd_adder_tb;

reg [3:0] a,b;
wire c;
wire [3:0] s;

bcd_adder uut(
.a(a),
.b(b),
.s(s),
.c(c)
);

initial begin
$dumpfile("bcd_adder.vcd");
$dumpvars(0,bcd_adder_tb);

for(integer k = 0; k < 256 ; k = k + 1)begin
{a,b} = k;
#10;
$display("a = %b|b = %b|%b %b",a,b,c,s);
end
$finish;
end

endmodule
