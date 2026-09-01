module demux_1x2_tb;
reg        i;
reg        s;
reg        e;
wire [1:0] y;
wire       expected;
assign expected = (e && i) ?  (2'b01 << s) : 2'b00;

demux_1x2 uut(
    .i(i),
    .s(s),
    .y(y),
    .e(e)
);

initial begin
    $dumpfile("demux_1x2.vcd");
    $dumpvars(0,demux_1x2_tb);
    for(integer k = 0 ; k < 8 ; k = k + 1)begin
        {e,s,i} = k;
        #10;
        if (y !== expected)
        $display("Error! E=%b|S=%b|I=%b|Y=%b|expected%b",e,s,i,y,expected);
    end
    $finish;
end

endmodule