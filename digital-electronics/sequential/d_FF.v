module d_FF(
    input      d,
    input      clk,
    output reg q,
    output     q_bar
);

always @(posedge clk) q <= d;

assign q_bar = ~q;
endmodule