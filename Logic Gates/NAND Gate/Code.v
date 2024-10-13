`timescale 1ns / 1ps
// using structural modelling
//module nand_gate(a,b,y);
//input a,b;
//output y;

//nand(y,a,b);

//endmodule

// using behavioral modelling
//module nand_gate(a,b,y);
//input a,b;
//output reg y;

//always @ (a,b)

//y = ~(a & b);

//endmodule;

// using data flow modelling
module nand_gate(a,b,y);
input a,b;
output y;

assign y = ~(a & b);

endmodule;
