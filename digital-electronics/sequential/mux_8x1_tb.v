module mux_8x1_tb;
reg [7:0] i;
reg [2:0] s;
reg       e;
wire      y;
wire      expected;
assign expected = e? i[s] : 1'b0;

mux_8x1 uut(
    .i(i),
    .s(s),
    .e(e),
    .y(y)
);

initial begin
    $dumpfile("mux_8x1.vcd");
    $dumpvars(0,mux_8x1_tb);
    for(integer k = 0 ; k < 4096 ; k = k + 1)begin
        {e,s,i} = k;
        #10;
        //below checks for error
        if (y !== expected)
        $display("ERROR! E=%b|S=%b|I=%b|Y=%b|Expected=%b",e,s,i,y,expected);
    end
    $finish;
end
endmodule