module bcd_to_7_segment_tb;
reg [3:0] i;
wire a,b,c,d,e,f,g;

bcd_to_7_segment uut(
.i(i),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g)
);

initial begin
$dumpfile("bcd_to_7_segment.vcd");
$dumpvars(0,bcd_to_7_segment_tb);

for(integer k = 0; k < 10; k = k + 1)begin
{i} = k;
#10;
$display("i - %b|a = %b|b = %b|c = %b|d = %b|e= %b|f=%b|g=%b",i,a,b,c,d,e,f,g);
end
$finish;
end

endmodule