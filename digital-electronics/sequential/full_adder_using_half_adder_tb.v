module full_adder_using_half_adder_tb;
reg x;
reg y;
reg cin;
wire s;
wire c;

full_adder_using_half_adder uut(
    .x(x),
    .y(y),
    .cin(cin),
    .s(s),
    .c(c)
);

initial begin
    $dumpfile("full_adder_using_half_adder");
    $dumpvars(0,full_adder_using_half_adder_tb);
    $display("x y cin | c s");
    for(integer i=0;i<8;i++)begin
        {x,y,cin}=i;
        #10;
        $display("%b %b %b | %b %b",x,y,cin,c,s);
    end
    $finish;
end
endmodule