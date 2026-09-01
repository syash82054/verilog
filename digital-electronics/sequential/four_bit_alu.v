module four_bit_alu(
    input  [3:0]     a,
    input  [3:0]     b,
    input  [3:0]     sel,
    output reg [3:0] y,
    output reg       zero,
    output reg       co
);

wire [3:0] add_out;
wire  carry_out;

four_bit_parallel_adder f1(
    .x(a[3:0]),
    .y(b[3:0]),
    .s(add_out),
    .c(carry_out)
);

wire [3:0] inc_add_out;
wire  inc_carry_out;

four_bit_parallel_adder f2(
    .x(a[3:0]),
    .y(4'b0001),
    .s(inc_add_out),
    .c(inc_carry_out)
);

wire [3:0] diff_out;
wire borrow_out;

four_bit_parallel_substractor fs1(
    .x(a[3:0]),
    .y(b[3:0]),
    .d(diff_out),
    .bo(borrow_out)
);

wire [3:0] dec_diff_out;
wire dec_borrow_out;

four_bit_parallel_substractor fs2(
    .x(a[3:0]),
    .y(4'b0001),
    .d(dec_diff_out),
    .bo(dec_borrow_out)
);



always @(*)begin
    y = 4'b0000;
    co = 1'b0;
    case (sel)
        4'b0000: begin
            y = add_out;
            co = carry_out;
        end
        4'b0001: begin
            y = diff_out;
            co = borrow_out; 
        end

        4'b0010: y = a&b;
        4'b0011: y = a|b;
        4'b0100: y = a^b;
        4'b0101: y = ~(a&b);
        4'b0110: y = ~(a|b);
        4'b0111: y = ~(a);
        4'b1000: y = ~(a^b);
        4'b1001: begin
            y = inc_add_out;
            co = inc_carry_out;
        end
        4'b1010: begin
            y = dec_diff_out;
            co = dec_borrow_out; 
        end
        4'b1011: y = a;
        4'b1100: y = b;
        4'b1101: y = a << 1;
        4'b1110: y = a >> 1;
        4'b1111: y = 4'b0000;

    endcase
    
    zero = (y == 4'b0000)? 1'b1 : 1'b0;
end
endmodule




