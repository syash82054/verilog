`timescale 1ns/1ps

module sipo_tb;

reg clk;
reg rst;
reg serial_in;
 wire [3: 0] parallel_out;


//initiate reusable sipo block
sipo #(.WIDTH(4)) dut(
.clk(clk),
.rst(rst),
.serial_in(serial_in),
.parallel_out(parallel_out)
);

//clk generation
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("sipo.vcd");
$dumpvars(0, sipo_tb);

rst = 1;
serial_in = 1;

#12 rst = 0;
@(negedge clk); serial_in = 0;
@(negedge clk); serial_in = 1;
@(negedge clk); serial_in = 1;
@(negedge clk); serial_in = 0;

repeat(2) @(negedge clk);
$finish;
end

initial begin
$monitor("time = %t| rst = %b| din = %b|dout = %b",$time,rst,serial_in,parallel_out);
end

endmodule
