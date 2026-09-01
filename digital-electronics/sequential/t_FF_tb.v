module t_FF_tb;

reg  t,clk;
wire q,q_bar;

t_FF uut(
    .t(t),
    .clk(clK),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("t_FF.vcd");
    $dumpvars(0,t_FF_tb);
    clk = 0;
    $monitor("time = %t | t = %b  | q = %b | q_bar = %b"
            ,$time,t,q,q_bar);

         t = 0;
    #10; t = 1;
    #10; t = 0;
    #10;
    $finish;
end

always #5 clk = ~clk;

endmodule