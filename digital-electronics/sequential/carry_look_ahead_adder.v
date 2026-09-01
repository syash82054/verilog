module carry_look_ahead_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output co
);
wire [3:0] g;
wire [3:0] p;
assign g = a*b;
assign p = a^b;
wire c1,c2,c3,c4;
assign c1 = g[0]|(p[0]&cin);
assign c2 = g[1]|(p[1]&c1);
assign c3 = g[2]|(p[2]&c2);
assign c4 = g[3]|(p[3]&c3);

assign s[0]= p[0]^cin;
assign s[1]= p[1]^c1;
assign s[2]= p[2]^c2;
assign s[3]= p[3]^c3;
assign co=c4;
endmodule