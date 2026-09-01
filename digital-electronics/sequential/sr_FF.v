module sr_FF(
    input      s,
    input      r,
    input      clk,
    output reg q,
    output reg q_bar
);

always @(posedge clk)begin
    case({s,r})
        2'b00:begin
            //hold // simple begin and end is simply wait or hold in ff 
                   // we can't use #10 in verilog code
        end
        2'b01: begin
            q     <= 1'b0;
            q_bar <= 1'b1; 
        end
        2'b10:begin
            q     <= 1'b1;
            q_bar <= 1'b0;
        end
        2'b11:begin
            //invalid
        end
    endcase
end

endmodule
