module demux_1x2(
    input        i,
    input        s,
    input        e,
    output reg [1:0] y
);

always @(*)begin
    y = 2'b0;
    if(i && e)
    y[s] = 1'b1;
end

endmodule