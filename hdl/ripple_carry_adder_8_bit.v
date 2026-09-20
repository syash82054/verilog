module half_adder(input a,b, output c_out,sum);
xor g1(sum,a,b);
and g2(c_out,a,b);
endmodule

module full_adder(input a,b,c_in, output c_out ,sum);
wire w1,w2,w3;
half_adder m1(a,b,w1,w2);
half_adder m2(w2, c_in, w3,sum);
or(c_out,w1,w2);
endmodule

module ripple_carry_adder_4_bit (input [3:0] a,b,input c_in,output c_out,output [3:0] sum);
wire c_in1,c_in2,c_in3;
full_adder m1(a[0],b[0],c_in,c_in1,sum[0]);
full_adder m2(a[1],b[1],c_in1,c_in2,sum[1]);
full_adder m3(a[2],b[2],c_in2,c_in3,sum[2]);
full_adder m4(a[3],b[3],c_in3,c_out,sum[3]);
endmodule

module ripple_carry_adder_8_bit(input [7:0] a,b, input c_in,output c_out,output [7:0] sum);
wire c_in4;
ripple_carry_adder_4_bit m1(a[3:0],b[3:0],c_in,c_in4,sum[3:0]);
ripple_carry_adder_4_bit m2(a[7:4],b[7:4],c_in4,c_out,sum[7:4]);
endmodule
