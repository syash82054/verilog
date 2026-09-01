module mux_4x1(
    input [3:0] i,
    input [1:0] s,
    input       e,
    output      y
);

assign y = e?(s[1]?(s[0]? i[3]: i[2])
                  :(s[0]? i[1] :i[0]))
            : 1'b0;
endmodule