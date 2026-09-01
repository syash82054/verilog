module two_bit_multiplier_tb;
reg [1:0] a;
reg [1:0] b;
wire [3:0] p;

two_bit_multiplier uut(
    .a,
    .b,
    .p
);

initial begin
    $dumpfile("two_bit_multiplier");
    $dumpvars(0,two_bit_multiplier_tb);
    $display("A1 A0 B1 B0 | P3 P2 P1 P0");
    for(integer i=0;i<16;i++)begin
        {a[1],a[0],b[1],b[0]}=i;
        #10;
        $display("%b %b %b %b | %b %b %b %b"
        ,a[1],a[0],b[1],b[0]
        ,p[3],p[2],p[1],p[0]);
    end
    $finish;
end
endmodule