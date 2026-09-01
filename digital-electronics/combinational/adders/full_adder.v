module full_adder(
    input x,
    input y,
    input cin,
    output c,
    output s
);

assign s = x^y^cin;
assign c = (x&y)|((x^y)&cin);

endmodule