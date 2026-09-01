module mux_4x1_using_mux_2x1_tb;
reg [3:0] i;
reg [1:0] s;
reg e;
wire y;
wire expected;
assign expected = e? i[s]: 1'b0;


mux_4x1_using_mux_2x1 uut(
    .i(i),
    .s(s),
    .e(e),
    .y(y)
);

initial begin
    $dumpfile("mux_4x1_using_mux_2x1.vcd");
    $dumpvars(0,mux_4x1_using_mux_2x1_tb);
    for(integer k = 0; k < 128; k = k + 1)begin
        {e,s,i} = k;
        #10;
        if(y!== (expected))//i[s] iss liye use nahi kiya kyoki un enabled mux 2x1 use kerke enternal enable use kiya
        //see 8x1 using 4x1 to understand difference in code while using enable and non enabled block
        $display("Error! E=%b|S=%b|I=%b|Y=%b|expected=%b",e,s,i,y,expected);
    end
    $finish;
end
endmodule