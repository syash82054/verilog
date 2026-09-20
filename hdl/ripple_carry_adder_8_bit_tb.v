module ripple_carry_adder_8_bit_tb;

reg [7:0] a,b;
reg c_in;
output [7:0] sum;
output c_out;

ripple_carry_adder_8_bit uut(
.a(a),
.b(b),
.c_in(c_in),
.c_out(c_out),
.sum(sum)
);

initial begin
$dumpfile("ripple_carry_adder_8_bit.vcd");
$dumpvars(0,ripple_carry_adder_8_bit_tb);

for(integer k = 0; k < 131072; k = k + 1)begin
{a,b,c_in} = k;
#10;
$display("a = %b|b = %b|c = %b|c_out = %b|sum = %b",a,b,c_in,c_out,sum);
end
$finish;
end

endmodule
