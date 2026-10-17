module in_tb;

reg a,b;
wire y;

integer input_a, input_b;
integer count;

in uut(
.a(a),
.b(b),
.y(y)
);

initial begin
$display("enter two bits, seperated by space: ");
count = $fscanf(32'h80000000, "%d %d", input_a,input_b);

if(count != 2 ||
(input_a != 0 && input_a != 1)||
(input_b != 0 && input_b != 1))begin
$display("invalid input");
end
else begin
a = input_a;
b = input_b;
#1;
$display("a = %b|b = %b|y = %b",a,b,y);
end
$finish;
end
endmodule
