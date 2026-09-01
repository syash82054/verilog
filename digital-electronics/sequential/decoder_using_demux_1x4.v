module decoder_using_demux_1x4(
    input  [1:0] i,
    output [3:0] y
);

demux_1x4 d1(
    .e(1'b1),
    .s(i [1:0]),
    .i(1'b1),
    .y(y [3:0])
);
endmodule