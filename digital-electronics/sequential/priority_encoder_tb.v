module priority_encoder_tb;

reg  [3:0] i;
wire [1:0] y;
wire [1:0] expected;
assign expected[0] = i[3]|((~i[2])&i[1]);
assign expected[1] = i[3]|i[2];
priority_encoder uut(
    .i(i),
    .y(y)
);

initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0,priority_encoder_tb);
    for(integer k = 0 ; k < 16; k = k + 1)begin
        {i} = k;
        #10;
        if (y !== expected)
        $display("Error! i=%b|y=%b|expected=%b",i,y,expected);
    end
    $finish;
end
endmodule
