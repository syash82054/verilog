module full_adder_subtractor(
    input      x,
    input      y,
    input      sel,
    input      c_b,
    output reg co_bo,
    output reg s_d
);

always @(*)begin
    s_d = 1'b0;
    co_bo = 1'b0;
    case (sel)
        1'b0: begin
            s_d   = x^y^c_b;
            co_bo = (x&y)|((x^y)&c_b);
        end
        1'b1: begin
            s_d   = x^y^c_b;
            co_bo = (y&c_b)|(~x&c_b)|(~x&y);
        end
    endcase 
end

endmodule