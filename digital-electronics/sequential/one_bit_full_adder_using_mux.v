module one_bit_full_adder_using_mux(
    input  [1:0] s,
    input        cin,
    output       sum,
    output       cout
);

assign cin = 1'b1;


mux_4x1 m1(
    .i({cin,~cin,~cin,cin}),
    .s(s[1:0]),
    .e(1'b1),
    .y(sum)
);

mux_4x1 m2(
    .i({1'b1,cin,cin,1'bo}),//.i({i3,i2,i1,i0})
    .s(s[1:0]),
    .e(1'b1),
    .y(cout)
);

endmodule