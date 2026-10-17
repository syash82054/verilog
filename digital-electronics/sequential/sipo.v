module sipo #(parameter WIDTH = 4)(
input wire clk,
input wire rst,
input wire serial_in,
output reg  [3:0] parallel_out
);

reg [WIDTH-1:0] shift_reg;
reg [1:0] count;

always @(posedge clk or posedge rst)begin

if(rst)begin
shift_reg <= {WIDTH{1'b0}};
parallel_out <= 4'b0000;
count = 2'd0;
end

else begin
shift_reg <= {shift_reg[2:0] , serial_in};

if(count == 2'd3)begin
parallel_out <= {shift_reg[2:0],serial_in};
count <= 2'd0;
end

else begin
count <= count +1'd1;
end
end
end
endmodule


