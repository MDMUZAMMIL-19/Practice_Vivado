`timescale 1ns / 1ps

module FBC(clk, count, rst);
input clk, rst;
output reg [3:0] count;

always @(posedge clk) begin
    if(!rst)
        count<=0;
    else
        count<=count+1;
end
endmodule
