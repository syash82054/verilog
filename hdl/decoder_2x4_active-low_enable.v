module decoder_2x4(d,a,b,enable);
output [0:3] d;
input a,b;
input enable;
wire a_not,b_not,enable_not;

not
g1 (a_not,a),
g2 (b_not,b),
g3 (enable_not,enable);

nand
g4 (d[0], a_not,b_not,enable_not),
g5 (d[1], a_not,b,enable_not),
g6 (d[2], a,b_not,enable_not),
g7 (d[3], a,b,enable_not);

endmodule
//as we use enable_not means when enable is low, decoder work -- means active-low enable
//as we use nand the selected output becomes 0 -- means active-low output
