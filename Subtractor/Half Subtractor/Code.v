`timescale 1ns / 1ps

module halfsubtractor(x,y,bout,diff);
input x,y;
output bout,diff;

assign diff = x^y;
assign bout = ~x&y;
endmodule
