module t_FF(
    input  wire t,
    input  wire clk,
    input  wire reset,
    output reg  q,
    output wire q_bar
);

always @(posedge clk)begin
    if(reset)begin
q<= 0;
end
else begin//because case is running even it reset is one which is causing error
    case(t)
        1'b0:begin
        end
        1'b1:begin
            q <= ~q;
        end
    endcase
end
end

assign q_bar = ~q;

endmodule
