module half_adder_tb;
reg x;
reg y;
wire s;
wire c;

half_adder uut(
    .x(x),
    .y(y),
    .s(s),
    .c(c)
);

initial begin
    $dumpfile("half_adder");
    $dumpvars(0, half_adder_tb);
    $display("X Y | C S");
    for(integer i=0;i<4;i++)begin
        {x,y}=i;
        #10;
        $display("%b %b | %b %b",x,y,c,s);
    end 
    $finish;
end 
endmodule