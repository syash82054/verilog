module mux_2x1(
    input [1:0]i,
    input e,
    input s,
    output y
);
assign y = e?(s? i[1]:i[0]):1'b0;
endmodule