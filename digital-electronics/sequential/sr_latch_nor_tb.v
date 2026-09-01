module sr_latch_nor_tb;

reg  s, r;
wire q, q_bar;

sr_latch_nor uut(
    .s(s),
    .r(r),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("sr_latch_nor.vcd");
    $dumpvars(0, sr_latch_nor_tb);

    for(integer k = 0; k < 4; k = k + 1)begin
        {s,r} = k;
        #10;
        $display("s=%b|r=%b|q=%b|q_bar=%b",s,r,q,q_bar);
    end
    $finish;
end

endmodule