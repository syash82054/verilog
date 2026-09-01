module sr_latch_nor(
    input s,
    input r,
    output q,
    output q_bar
);

assign q = ~(r|q_bar);
assign q_bar = ~(s|q);
//nor(q, r,q_bar);
//nor(q_bar, s,q);

endmodule
