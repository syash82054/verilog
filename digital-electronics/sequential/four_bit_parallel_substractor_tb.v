module four_bit_parallel_substractor_tb;
reg [3:0] x;
reg [3:0] y;
wire bo;
wire [3:0] d;

four_bit_parallel_substractor uut(
    .x,
    .y,
    .bo(bo),
    .d
);

initial begin
    $dumpfile("four_bit_parallel_substractor");
    $dumpvars(0,four_bit_parallel_substractor_tb);
    $display("X Y | BO D");
    for(integer i=0;i<16;i++)begin
        for(integer j=0;j<16;j++)begin
            x=i;
            y=j;
            #10;
            $display("%b %b | %b %b",x,y,bo,d);
        end
    end
    $finish;
end
endmodule