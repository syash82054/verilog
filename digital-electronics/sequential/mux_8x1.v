module mux_8x1(
    input [7:0] i,
    input [2:0] s,
    input       e,
    output      y
);

assign y = e? s[2]? (s[1]?(s[0]? i[7] : i[6])
                          :(s[0]? i[5] : i[4]))
                    :(s[1]?(s[0]? i[3] : i[2])
                          :(s[0]? i[1] : i[0])) 
            : 1'b0;
endmodule