module mux_8x1_using_mux_4x1_tb;
reg [7:0] i;
reg [2:0] s;
wire y;


mux_8x1_using_mux_4x1 uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    $dumpfile("mux_8x1_using_mux_4x1.vcd");
    $dumpvars(0,mux_8x1_using_mux_4x1_tb);
    for(integer k = 0 ; k < 2048 ; k = k + 1)begin
        {s,i} = k;
        #10;
        if(y!==i[s])//didn't use e because we already used enabled mux 4x1 and external e is not required
        $display("Error! S=%b|I=%b|Y=%b|Expected=%b",s,i,y,i[s]);
    end
    $finish;
end
endmodule