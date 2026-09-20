module octal_to_bin_priority_encoder_tb;

reg [7:0] o;
wire [2:0] b;

octal_to_bin_priority_encoder uut(
.o(o),
.b(b)
);

initial begin
$dumpfile("octal_to_bin_priority_encoder.vcd");
$dumpvars(0,octal_to_bin_priority_encoder_tb);

for(integer k = 0; k < 256 ; k = k + 1)begin
o = k;
#10;
$display("o = %b|b = %b",o,b);
end
$finish;
end

endmodule
