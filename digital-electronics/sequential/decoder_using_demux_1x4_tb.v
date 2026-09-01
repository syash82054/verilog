module decoder_using_demux_1x4_tb;
reg  [1:0] i;
wire [3:0] y;
wire [3:0] expected;
assign     expected = 4'b0001 << i;


decoder_using_demux_1x4 uut(
    .i(i),
    .y(y)
);

initial begin
    $dumpfile("decoder_using_demux_1x4.vcd");
    $dumpvars(0,decoder_using_demux_1x4_tb);
    for(integer k = 0 ; k < 4 ; k = k + 1)begin
        {i} = k;
        #10;
        if(y !== expected)
        $display("Error! i=%b|y=%b|expected=%b",i,y,expected);
    end
    $finish;
end

endmodule