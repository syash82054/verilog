module d_FF(
    input      d,
    input      clk,
    input      preset,
    input      clr,
    output reg q,
    output     q_bar
);

always @(posedge clk)begin
if(preset == 0)begin
q = 1;
end
else if(clr == 0)begin
q = 0;
end 
else begin
 q <= d;
end
end

assign q_bar = ~q;
endmodule
