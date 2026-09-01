module master_slave_jk(
    input  wire j,
    input  wire k,
    input  wire clk,
    output reg  q,
    output wire q_bar
);

reg qm;

always @(posedge clk)begin
    case({j,k})
        2'b00:begin
        end
        2'b01:begin
            qm <= 1'b0;
        end
        2'b10:begin
            qm <= 1'b1;
        end
        2'b11:begin
            qm <= ~q;
        end
    endcase
end

always @(negedge clk)
    q <= qm;

assign q_bar = ~q;

endmodule

