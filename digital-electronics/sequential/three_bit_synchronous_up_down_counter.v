module three_bit_synchronous_up_down_counter(
input m,
input clk,
input reset,
output reg [2:0] q
);
wire [2:0] q_up, q_down;

three_bit_synchronous_up_counter c1(
.clk(clk),
.reset(reset),
.q(q_up)
);

three_bit_synchronous_down_counter c2(
.clk(clk),
.reset(reset),
.q(q_down)
);

always @(*)begin
case(m)
1'b0:begin
q = q_up;
end
1'b1:begin
q = q_down;
end
endcase
end

endmodule
