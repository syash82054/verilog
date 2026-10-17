`timescale 1ns/1ps

module siso_tb;
reg clk;
reg reset;
reg serial_in;
wire serial_out;

//initiate reusable siso block
siso #(.WIDTH(4)) dut(
.clk(clk),
.reset(reset),
.serial_in(serial_in),
.serial_out(serial_out)
);

//clk generation

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("siso.vcd");
$dumpvars(0, siso_tb);

reset = 1;
serial_in = 1;

#12 reset = 0;
@(negedge clk); serial_in = 0;
@(negedge clk); serial_in = 1;
@(negedge clk); serial_in = 1;
@(negedge clk); serial_in = 0;

repeat(2) @(negedge clk);
$finish;
end

initial begin
$monitor("time = %t reset = %b din = %b dout = %b",$time,reset,serial_in,serial_out);
end

endmodule
