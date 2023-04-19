`timescale 1ns / 1ps

module pc_tb();
    reg clk, rst, ce;
    wire [3:0] cnt_pc;
// clock designation
parameter PERIOD = 20; // T = 20ns, f = 50MHz

pc pc_4bit(clk,rst,ce,cnt_pc);

initial begin
clk <= 0;
forever #PERIOD clk=~clk;
end
initial begin
rst <= 0;
ce <= 1;
#640
ce <= 0;
end

initial #1024 $finish;
endmodule
