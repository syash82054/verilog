module four_bit_alu_tb;
reg      [3:0] a;
reg      [3:0] b;
reg      [3:0] sel;
wire     [3:0] y;
wire           zero;
wire           co;
integer error_count;

reg [3:0] expected_y;
reg       expected_co;
reg       expected_zero;

always @(*)begin
    expected_y = 4'b0000;
    expected_co = 1'b0;
    expected_zero = 1'b0;
    case (sel)
        4'b0000: begin
        {expected_co, expected_y} = a+b;
        end
        4'b0001: begin
        expected_y = a-b; 
        expected_co = (a < b);
        end

        4'b0010: expected_y = a&b;
        4'b0011: expected_y = a|b;
        4'b0100: expected_y = a^b;
        4'b0101: expected_y = ~(a&b);
        4'b0110: expected_y = ~(a|b);
        4'b0111: expected_y = ~(a);
        4'b1000: expected_y = ~(a^b);
        4'b1001: begin
        {expected_co, expected_y} = a + 4'b0001;
        end
        4'b1010: begin
        expected_y = a-4'b0001; 
        expected_co = (a == 4'b0000); 
        end
        4'b1011: expected_y = a;
        4'b1100: expected_y = b;
        4'b1101: expected_y = a << 1;
        4'b1110: expected_y = a >> 1;
        4'b1111: expected_y = 4'b0000;
    endcase
    expected_zero = (expected_y == 4'b0000);
end

four_bit_alu uut(
    .a(a),
    .b(b),
    .sel(sel),
    .y(y),
    .zero(zero),
    .co(co)
);

initial begin
    error_count = 0;
    $dumpfile("four_bit_alu.vcd");
    $dumpvars(0,four_bit_alu_tb);

    for(integer k = 0 ; k < 4096 ; k = k + 1)begin
        {sel,a,b} = k;
        #10;
        if (y !== expected_y || co !== expected_co || zero !== expected_zero)begin
            error_count = error_count + 1;
            $display("Error! sel=%b|a=%b|b=%b|y=%b|expected_y=%b|co=%b|expected_co=%b|zero = %b|expected_zero = %b"
                            ,sel,a,b,y,expected_y,co,expected_co,zero,expected_zero);
        end
    end
    if (error_count !== 0)
        $display("FAIL!");
    else 
        $display("PASS");
    $finish;
end
endmodule