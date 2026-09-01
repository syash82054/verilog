module priority_encoder(
    input  [3:0] i,
    output reg [1:0] y
);

always @(*)begin
    y = 2'b00;
    if(i[3] )       y = 2'b11;
    else if (i[2] ) y = 2'b10;
    else if (i[1] ) y = 2'b01;
    else if (i[0] ) y = 2'b00;
     
end
            
endmodule
