module full_substractor_tb;
reg x;
reg y;
reg b;
wire d;
wire bo;

full_substractor uut(
    .x(x),
    .y(y),
    .b(b),
    .d(d),
    .bo(bo)
);

initial begin
    $dumpfile("full_substractor");
    $dumpvars(0, full_substractor_tb);
    $display("X Y b | Bo D");
    for(integer i=0;i<8;i++)begin
        {x,y,b}=i;
        #10;
        $display("%b %b %b | %b %b",x,y,b,bo,d);
    end
    $finish;
end
endmodule