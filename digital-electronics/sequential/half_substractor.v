module half_substractor(
    input x,
    input y,
    output b,
    output d
);

assign d=x^y;
assign b=~x&y;
endmodule