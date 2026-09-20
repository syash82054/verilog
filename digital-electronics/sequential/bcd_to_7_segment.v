module bcd_to_7_segment(
input [3:0] i,
output reg a,b,c,d,e,f,g
);
always @(*)begin
a= 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
e = 1'b0;
f = 1'b0;
g = 1'b0;
case (i)
4'b0000:begin
a =1'b1;
b=1'b1;
c=1'b1;
d=1'b1;
e=1'b1;
f=1'b1;
g=1'b0;
end
4'b0001:begin
b = 1'b1;
c= 1'b1;
end
4'b0010:begin
a = 1'b1;
b=  1'b1;
g = 1'b1;
e = 1'b1;
d = 1'b1;
end
4'b0011:begin
a= 1'b1;
b = 1'b1;
c= 1'b1;
g = 1'b1;
d = 1'b1;
end
4'b0100:begin
f = 1'b1;
b = 1'b1;
g = 1'b1;
c = 1'b1;
end
4'b0101:begin
f = 1'b1;
a = 1'b1;
g = 1'b1;
c = 1'b1;
d = 1'b1;
end
4'b0110:begin
a = 1'b1;
f = 1'b1;
g = 1'b1;
e = 1'b1;
c = 1'b1;
d = 1'b1;
end
4'b0111:begin
a = 1'b1;
b = 1'b1;
c = 1'b1;
end 
4'b1000: begin
a = 1'b1;
b = 1'b1;
c = 1'b1;
d = 1'b1;
e = 1'b1;
f = 1'b1;
g = 1'b1;
end
4'b1001: begin
a = 1'b1;
b = 1'b1;
c = 1'b1;
g = 1'b1;
f = 1'b1;
d = 1'b1;
end

endcase
end

endmodule




