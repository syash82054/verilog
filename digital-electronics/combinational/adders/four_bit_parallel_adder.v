module four_bit_parallel_adder(
    input [3:0] x,
    input [3:0] y,
    output [3:0] s,
    output c
);
wire s1;
wire s2;
wire s3;
wire c1;
wire c2;
wire c3;
full_adder fa1(
    .x(x[0]),
    .y(y[0]),
    .cin(1'b0),
    .s(s[0]),
    .c(c1)
);

full_adder fa2(
    .x(x[1]),
    .y(y[1]),
    .cin(c1),
    .s(s[1]),
    .c(c2)
);

full_adder fa3(
    .x(x[2]),
    .y(y[2]),
    .cin(c2),
    .s(s[2]),
    .c(c3)
);

full_adder fa4(
    .x(x[3]),
    .y(y[3]),
    .cin(c3),
    .s(s[3]),
    .c(c)
);
endmodule
