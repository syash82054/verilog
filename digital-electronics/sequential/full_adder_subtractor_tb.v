module full_adder_subtractor_tb;
reg  x;
reg  y;
reg  sel;
reg  c_b;
wire co_bo;
wire s_d;
reg  co_bo_expected;
reg  s_d_expected;


always @(*)begin
    co_bo_expected = 1'b0;
    s_d_expected   = 1'b0;
    case (sel)
    1'b0: begin
        {co_bo_expected, s_d_expected}= {1'b0,x} + {1'b0,y} + {1'b0,c_b};
    end
    1'b1: begin
        co_bo_expected = ({1'b0,x} < ({1'b0,y} + {1'b0,c_b}));
        s_d_expected   = x - y - c_b;
    end
    endcase
end
    

full_adder_subtractor uut(
    .x(x),
    .y(y),
    .sel(sel),
    .c_b(c_b),
    .co_bo(co_bo),
    .s_d(s_d)
);

initial begin
    $dumpfile("full_adder_subtractor.vcd");
    $dumpvars(0,full_adder_subtractor_tb);

    for(integer k = 0 ; k < 16 ; k = k + 1)begin
        {sel,x,y,c_b} = k;
        #10;
        if(co_bo !== co_bo_expected && s_d !== s_d_expected)
        $display("Error! sel=%b|x=%b|y=%b|c_b=%b|co_bo=%b|co_bo_expected=%b|s_d=%b|s_d_expected=%b",sel,x,y,c_b,co_bo,co_bo_expected,s_d,s_d_expected);
    end
    $finish;
end
endmodule