module mux_2x1_tb;
reg [1:0] i;
reg s;
reg e;
wire y;
mux_2x1 uut(
    .i,
    .s(s),
    .e(e),
    .y(y)
);

initial begin 
    $dumpfile("mux_2x1");
    $dumpvars(0,mux_2x1_tb);
    $display("E S i1 i0 | Y");
    for(integer k=0;k<16;k++)begin
        {e,s,i}=k;
        #10;
        $display("%b %b %b %b | %b",e,s,i[1],i[0],y);
    end
    $finish;
end
endmodule