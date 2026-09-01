module sr_FF_tb;

reg  s;
reg  r;
reg  clk;
wire q;
wire q_bar;

sr_FF uut(
    .s(s),
    .r(r),
    .clk(clk),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("sr_FF.vcd");
    $dumpvars(0,sr_FF_tb);
    clk = 0;
    $monitor("time = %t|clk = %b|s = %b|r = %b|q = %b|q_bar = %b"
             ,$time,clk,s,r,q,q_bar);
    s = 1; r = 0; #10;//set
    s = 0; r = 0; #10;//hold
    s = 0; r = 0; #10;//hold
    s = 0; r = 1; #10;//reset
    
    
    
    $finish;
end
always #5 clk = ~clk;

endmodule