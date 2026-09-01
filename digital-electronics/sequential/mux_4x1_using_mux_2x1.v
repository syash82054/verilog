module mux_4x1_using_mux_2x1(
    input [3:0] i,
    input [1:0] s,
    input e,
    output y
);
wire a;
wire b;
mux_2x1 m1(
    .i(i[1:0]),
    .s(s[0]),
    .e(e),
    .y(a)
);

mux_2x1 m2(
    .i(i[3:2]),
    .s(s[0]),
    .e(e),
    .y(b)
);

mux_2x1 m3(
    .i({b,a}),
    .s(s[1]),
    .e(e),
    .y(y)
);
endmodule