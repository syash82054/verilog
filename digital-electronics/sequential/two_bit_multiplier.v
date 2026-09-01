module two_bit_multiplier(
    input  [1:0] a,
    input  [1:0] b,
    output [3:0] p
);

//wire carry;
//assign p[0] = a[0] & b[0];
//half_adder ha1(
    .x(a[1] & b[0]),
    .y(a[0] & b[1]),
    .s(p[1]),
    .c(carry)
//);
//half_adder ha2(
    .x(a[1] & b[1]),
    .y(carry),
    .s(p[2]),
    .c(p[3])
//);
//ABOVE TELLS HADWARE DESIGN 
assign p=a*b;
\\ABOVE IS EASIER THIS TELLS COMPUTER TO FIGURE OUT HARDWARE
endmodule