`timescale 1ns / 1ps
// using structural modelling
module fullsubtractor(x,y,bin,bout,diff);
input x,y,bin;
output bout,diff;

assign diff = x^y^bin;
assign bout = (~x&y)|(~(x^y)& bin);
endmodule

//using behavioral modelling

