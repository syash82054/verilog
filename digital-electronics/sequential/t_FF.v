module t_FF(
    input  wire t,
    input  wire clk,
    output reg  q,
    output wire q_bar
);

always @(posedge clk)begin
    case(t)
        1'b0:begin
        end
        1'b1:begin
            q = ~q;
        end
    endcase
end

assign q_bar = ~q;

endmodule