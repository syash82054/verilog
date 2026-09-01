module jk_FF_tb;

reg j;
reg k;
reg clk;

wire q;
wire q_bar;

jk_FF uut(
    .j(j),
    .k(k),
    .clk(clk),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("jk_FF.vcd");
    $dumpvars(0,jk_FF_tb);

    clk = 0;
    $monitor("time = %t|j=%b|k =%b|q=%b|q_bar=%b"
            ,$time,j,k,q,q_bar);

        j = 0; k = 0; 
    #10 begin 
        j = 0; k = 1; 
        end
    #10 begin 
        j = 1; k = 1; 
        end
    #10 begin 
        j = 1; k = 0; 
        end
    #10 //To get to the rising edge so last case runs

    $finish;
end

always #5 clk = ~clk;

endmodule