module octal_to_bin_priority_encoder(
input [7:0] o,
output [2:0] b
);

assign b[2] = o[4]|o[5]|o[6]|o[7];
assign b[1] = o[7]|o[6]|(~o[5]&~o[4]&(o[3]|o[2]));
assign b[0] = o[7]|(~o[6]&o[5])|(~o[6]&~o[4]&o[3])|(~o[6]&~o[4]&~o[2]&o[1]);

endmodule
