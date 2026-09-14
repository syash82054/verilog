module decoder_2x4_tb;

reg a,b,enable;
wire [3:0] d;

decoder_2x4 uut(
.a(a),
.b(b),
.enable(enable),
.d(d)
);

initial begin
$dumpfile("decoder_2x4.vcd");
$dumpvars(0, decoder_2x4_tb);

for(integer k = 0; k < 8; k = k + 1)begin
{enable,a,b} = k;
#10;
$display("enable = %b|a = %b|b = %b|d = %b",enable,a,b,d);
end
$finish;
end

endmodule

