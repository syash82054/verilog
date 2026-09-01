module full_adder_using_half_adder(
    input x,
    input y,
    input cin,
    output c,
    output s
);
wire s1;
wire c1;

half_adder ha1(
    .x(x),
    .y(y),
    .s(s1),
    .c(c1)
    
);

half_adder ha2(
    .x(s1),
    .y(cin),
    .s(s2),
    .c(c2)
);

assign s =s2;
assign c = c1|c2;
endmodule