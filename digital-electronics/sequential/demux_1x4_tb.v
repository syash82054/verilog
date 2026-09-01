module demux_1x4_tb;
reg        e;
reg        i;
reg  [1:0] s;
wire [3:0] y;
wire [3:0] expected;
assign     expected = (e && i) ? (4'b0001 << s) : (4'b0000) ;

demux_1x4 uut(
    .e(e),
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    $dumpfile("demux_1x4.vcd");
    $dumpvars(0,demux_1x4_tb);
    for(integer k = 0; k < 16 ; k = k + 1)begin
        {e,i,s} = k;
        #10;
        if(y !== expected)
        $display("Error! e=%b|s=%b|i=%b|y=%b|expected=%b",e,s,i,y,expected);
    end
    $finish;
end
endmodule