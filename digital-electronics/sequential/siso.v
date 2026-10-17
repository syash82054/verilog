module siso #(parameter WIDTH = 4)(
input wire clk,
input wire reset,
input wire serial_in,
output wire serial_out
);

reg [WIDTH-1:0] shift_reg;

always @(posedge clk or posedge reset)begin
if(reset)
shift_reg <= {WIDTH{1'b0}};
else
shift_reg <= (shift_reg << 1) | serial_in;
end

assign serial_out = shift_reg[WIDTH-1];

endmodule
