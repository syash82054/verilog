module half_substractor_tb;
reg x;
reg y;
wire d;
wire b;

half_substractor uut(
    .x(x),
    .y(y),
    .d(d),
    .b(b)
);

initial begin
    $dumpfile("half_substractor");
    $dumpvars(0, half_substractor_tb);
    $display("X Y | B D");
    for(integer i=0;i<4;i++)begin
        {x,y}=i;
        #10;
        $display("%b %b | %b %b",x,y,b,d);
    end
    $finish;
end
endmodule