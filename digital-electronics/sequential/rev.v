module rev(
	input x,
	input y,
	input bin,
	output d,
	output bo
);

assign d = x^y^bin;
assign bo = (~x&bin)|(y&bin)|(~x&y);

endmodule
