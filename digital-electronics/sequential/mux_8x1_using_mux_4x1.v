module mux_8x1_using_mux_4x1(
    input [7:0] i,
    input [2:0] s,
    output y
);
wire a;
wire b;

mux_4x1 m1(
    .i(i[3:0]),
    .s(s[1:0]),
    .e(~s[2]),
    .y(a)
);

mux_4x1 m2(
    .i(i[7:4]),
    .s(s[1:0]),
    .e(s[2]),
    .y(b)
);

assign y = a|b;
endmodule