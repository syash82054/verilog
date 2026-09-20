module gray_4_bit_to_binary_4_bit_tb;
reg [4:0] a;
wire [3:0] y;
wire c_bin;

gray_4_bit_to_binary_4_bit uut(
.a(a),
.y(y),
.c_bin(c_bin)
)'

initial begin
$dumpfile("gray_4_bit_to_binary_4_bit.vcd);
$dumpvars(0,gray_4_bit_to_binary_4_bit_tb);

for(integer k = 0; k < 32; k = k+1)begin
{a} = k;
$display("a = %b|y = %b" a,y);
end
$finish;
end
endmodule
