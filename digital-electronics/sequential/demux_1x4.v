module demux_1x4(
    input            e,
    input      [1:0] s,
    input            i,
    output reg [3:0] y
);

always @(*)begin
    y = 4'b0000;
    if(i && e)
    y[s] = 1'b1;
end
endmodule