module one_bit_full_adder_using_mux_tb;
reg  [1:0] s;
wire       sum;
wire       cout;

one_bit_full_adder_using_mux uut(
    .s(s),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("one_bit_full_adder_using_mux.vcd");
    $dumpvars(0,one_bit_full_adder_using_mux_tb);
    for(integer k = 0 ; k < 4; k = k + 1)begin
        {s} = k;
        #10;
        $display("s=%b|sum=%b|cout=%b",s,sum,cout);
    end
    $finish;
end
endmodule
