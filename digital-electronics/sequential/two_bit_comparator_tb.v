module two_bit_comparator_tb;
reg  [1:0] a;
reg  [1:0] b;
wire [2:0] y;

wire [2:0] expected;
//assign expected[0] = (a[1]&~b[1])|(a[1]&a[0]&~b[0])|(a[0]&~b[1]&~b[0]);
//assign expected[2] = (~a[1]&b[1])|(~a[1]&~a[0]&b[0])|(~a[0]&b[1]&b[0]);
//assign expected[1] = (~a[1]&~a[0]&~b[1]&~b[0])|(~a[1]&a[0]&~b[1]&b[0])|(a[1]&~a[0]&b[1]&~b[0])|(a[1]&a[0]&b[1]&b[0]);
assign expected[0] = (a>b);
assign expected[1] = (a==b);
assign expected[2] = (a<b);

two_bit_comparator uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("two_bit_comparator.vcd");
    $dumpvars(0,two_bit_comparator_tb);

    for(integer k = 0 ; k < 16 ; k = k + 1)begin
        {a,b} = k;
        #10;
        if(y !== expected)
        $display("Error! a=%b|b=%b|y=%b|expected=%b",a,b,y,expected);
    end
    $finish;
end

endmodule   