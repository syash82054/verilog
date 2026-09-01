module full_adder_tb;
reg x;
reg y;
reg cin;
wire c;
wire s;

full_adder uut(
    .x(x),
    .y(y),
    .cin(cin),
    .s(s),
    .c(c)
);

initial begin
    $dumpfile("full_adder");
    $dumpvars(0,full_adder_tb);
    $display("X Y Cin | C S");
    for(integer i=0;i<8;i++)begin
        {x,y,cin}=i;
        #10;
        $display("%b %b %b | %b %b",x,y,cin,c,s);
    end
    $finish;
end

endmodule