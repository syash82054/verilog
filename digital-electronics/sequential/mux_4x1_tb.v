module mux_4x1_tb;
reg [3:0] i;
reg [1:0] s;
reg e;
wire      y;

mux_4x1 uut(
    .i(i),
    .s(s),
    .e(e),
    .y(y)
);

initial begin
    $dumpfile("mux_4x1.vcd");
    $dumpvars(0,mux_4x1_tb);
    $display(" S     I      Y");
    $display("---------------");
    //$display(" s1 s0 i3 i2 i1 i0 | y");
    for(integer k=0; k<128;k++)begin
        {e,s,i}=k;
        #10;
        $display("s=%b i=%b y=%b",s,i,y);
        //$display("%b %b %b %b %b %b | %b",s[1],s[0],i[3],i[2],i[1],i[0],y);
    end
    $finish;  
end
endmodule