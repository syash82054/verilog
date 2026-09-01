module four_bit_parallel_adder_tb;
reg [3:0] x;
reg [3:0] y;
wire c;
wire [3:0] s;

four_bit_parallel_adder uut(
    .x,
    .y,
    .c(c),
    .s
);

initial begin
    $dumpfile("four_bit_parallel_adder");
    $dumpvars(0,four_bit_parallel_adder_tb);
    $display("X Y | C S");
    for(integer i=0;i<16;i++)begin
        for(integer j=0;j<16;j++)begin
            x=i;
            y=j;
            #10;
            $display("%b %b | %b %b",x,y,c,s);
        end
    end
    $finish;
end
endmodule