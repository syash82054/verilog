module gray_4_bit_to_binary_4_bit(
input [4:0] a,
output [3:0] y
);

wire w1,w2;
reg [3:0] w3;
assign w1 = a[4]|(a[3]&a[2])|a[1]&a[3];
case(w1)
1'b0: w3 = a;
1'b1: w3 = a | 4'b1010;
endcase

assgin y = w3;

endmodule

