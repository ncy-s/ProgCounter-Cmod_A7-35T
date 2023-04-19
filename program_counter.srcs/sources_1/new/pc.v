`timescale 1ns / 1ps

module pc(
    input clk,
    input rst,
    input ce,
    output reg [3:0] out
    );
initial begin
out = 4'b0;
end
always @(posedge clk && ce) begin
    if (rst) 
        out <= 4'b0;
    else
        out <= out + 4'b1;
    end
endmodule
