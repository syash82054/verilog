module two_bit_comparator(
    input      [1:0] a,
    input      [1:0] b,
    output reg [2:0] y
);

always @(*)begin
    y = 3'b000;
    if (a>b)begin
        y = 001;
    end
    else if (a==b)begin
        y = 010;
    end
    else begin
        y = 100;
    end
end

endmodule