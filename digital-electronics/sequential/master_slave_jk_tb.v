module master_slave_jk_tb;

reg j,k,clk;
wire q,q_bar;

master_slave_jk uut(
    .j(j),
    .k(k),
    .clk(clk),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("master_slave_jk.vcd");
    $dumpvars(0,master_slave_jk_tb);
    clk = 0;
    $monitor("time = %t | j = %b | k = %b | q = %b | q_bar = %b",
            $time,j,k,q,q_bar);

        
        j = 0; k = 1;
    #10 j = 0; k = 0;
    #10 j = 1; k = 0;
    #10 j = 1; k = 1; 
    #40 

    $finish;
end

always #5 clk = ~clk;
endmodule