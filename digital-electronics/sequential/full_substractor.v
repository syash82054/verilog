module full_substractor(
    input x,
    input y,
    input b,
    output d,
    output bo
);

assign d = x^y^b;
assign bo = (y&b)|(~x&b)|(~x&y);
endmodule