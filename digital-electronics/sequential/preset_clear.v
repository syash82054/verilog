module preset_clear(
	input      s,
	input      r,
	input      clk,
	input	   p,
	input      c,
	output reg q,
	output     q_bar							
);

always @(posedge clk)begin
	case({p,c})
		2'b00: begin
			end
		2'b01: begin 
			q <= 1;
			end
		2'b10: begin
			q <= 0;
			end
		2'b11:begin
			case({s,r})
				2'b00: begin
					end
				2'b01: q <= 1;
				2'b10: q <= 0;
				2'b11: begin
					end
			endcase
		end
	endcase
end

assign q_bar = ~q;

endmodule
