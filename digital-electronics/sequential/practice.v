//question 4.5
module practice(
input [2:0] a,
output [2:0] y
);

if(a <= 3'b011)begin
y = a+a;
end
if(a > 011)begin
y = a/2;
end
endmodule

//
module practive(
input [2:0] a,
output  y
);

wire w1,w2,w3;

nand(w1,a[0],a[1]);
nand(w2,a[1],a[2]);
nand(w3,a[0],a[1])l

assgin y = w1 | w2 | w3;
