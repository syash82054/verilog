module four_bit_parallel_adder_subtractor_tb;
reg  [3:0] x;
reg  [3:0] y;
reg        sel;
wire [3:0] s_d;
wire       co_bo;

four_bit_parallel_adder_subtractor uut(
    .x(x),
    .y(y),
    .sel(sel),
    .s_d(s_d),
    .co_bo(co_bo)
);

initial begin
    $dumpfile("four_bit_parallel_adder_subtractor.vcd");
    $dumpvars(0,four_bit_parallel_adder_subtractor_tb);

    for(integer k = 0 ; k < 512 ; k = k + 1)begin
        {sel,x,y} = k;
        #10;
        $display("sel=%b|x=%b|y=%b|s_d=%b|co_bo=%b",sel,x,y,s_d,co_bo);
    end
    $finish;
end

endmodule

