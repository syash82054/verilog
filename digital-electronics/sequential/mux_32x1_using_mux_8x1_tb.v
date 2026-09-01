module mux_32x1_using_mux_8x1_tb;
reg [31:0] i;
reg [4:0]  s;
wire       y;

mux_32x1_using_mux_8x1 uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    $dumpfile("mux_32x1_using_mux_8x1.vcd");
    $dumpvars(0,mux_32x1_using_mux_8x1_tb);
    for(integer k = 0 ; k < 32 ; k = k + 1)begin
        {i,s} = k;
        #10;
        if (y !== i[s])
        $display("Error! S=%b|I=%b|Y=%b|Expected=%b",s,i,y,i[s]);
    end
    $finish;    
end

endmodule