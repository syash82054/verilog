module four_bit_parallel_substractor(
    input [3:0] x,
    input [3:0] y,
    output [3:0] d,
    output bo
);
wire d1;
wire d2;
wire d3;
wire bo1;
wire bo2;
wire bo3;
full_substractor fs1(
    .x(x[0]),
    .y(y[0]),
    .b(1'b0),
    .d(d[0]),
    .bo(bo1)
);

full_substractor fs2(
    .x(x[1]),
    .y(y[1]),
    .b(bo1),
    .d(d[1]),
    .bo(bo2)
);

full_substractor fs3(
    .x(x[2]),
    .y(y[2]),
    .b(bo2),
    .d(d[2]),
    .bo(bo3)
);

full_substractor fs4(
    .x(x[3]),
    .y(y[3]),
    .b(bo3),
    .d(d[3]),
    .bo(bo)
);
endmodule
