module d_FF_tb;

reg  d;
reg  clk;
wire q;
wire q_bar;

d_FF uut(
    .d(d),
    .clk(clk),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("d_FF.vcd");
    $dumpvars(0,d_FF_tb);
    clk = 0;
    $monitor("time = %t|clk=%b|d=%b|q=%b|q_bar=%b",
                $time,clk,d,q,q_bar);
    d = 0; 
    #12; d = 1; // means wait till 12 sec and then change value
    #10; d = 0;
    #10; d = 1; 
    #10;
    $finish;
end
always #5 clk = ~clk;

endmodule                   