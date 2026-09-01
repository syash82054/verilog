module carry_look_ahead_adder_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] s;
wire co;

carry_look_ahead_adder uut(
    .a,
    .b,
    .cin(cin),
    .s,
    .co(co)
);

initial begin
    $dumpfile("carry_look_ahead_adder");
    $dumpvars(0,carry_look_ahead_adder_tb);
    $display("A   B | Cout    Sum");
    for(integer i=0;i<256;i++)begin
        {a,b}=i;
        #10;
        $display(" %b(%0d) %b(%0d) = %b%b (%0d)",
        a,a,b,b,co,s,
        {co,s});
    end
    $finish;
end
endmodule