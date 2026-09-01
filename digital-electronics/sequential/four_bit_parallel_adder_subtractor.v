module four_bit_parallel_adder_subtractor(
    input [3:0] x,
    input [3:0] y,
    input       sel,
    output [3:0] s_d,
    output       co_bo
);
wire c1;
wire c2;
wire c3;
full_adder_subtractor fa1(
    .x(x[0]),
    .y(y[0]),
    .c_b(1'b0),
    .sel(sel),
    .s_d(s_d[0]),
    .co_bo(c1)
);

full_adder_subtractor fa2(
    .x(x[1]),
    .y(y[1]),
    .c_b(c1),
    .sel(sel),
    .s_d(s_d[1]),
    .co_bo(c2)
);
full_adder_subtractor fa3(
    .x(x[2]),
    .y(y[2]),
    .c_b(c2),
    .sel(sel),
    .s_d(s_d[2]),
    .co_bo(c3)
);
full_adder_subtractor fa4(
    .x(x[3]),
    .y(y[3]),
    .c_b(c3),
    .sel(sel),
    .s_d(s_d[3]),
    .co_bo(co_bo)
);
endmodule
