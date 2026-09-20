module excess3_to_bin_tb;
reg [3:0] a;
wire [3:0] b;

excess3_to_bin uut(
.a(a),
.b(b)
);

initial begin
$dumpfile("excess3_to_bin.vcd");
$dumpvars(0,excess3_to_bin_tb);

for(integer k = 0; k < 10; k = k + 1)begin
a = k + 3;
#10;
$display("a = %b;b = %b",a,b);
end
$finish;
end

endmodule

