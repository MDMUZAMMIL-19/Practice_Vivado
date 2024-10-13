`timescale 1ns / 1ps

// using structural modelling
module nor_gate(a,b,y);
input a,b;
output y;

nor(y,a,b);

endmodule

// using behavioral modelling
//module nor_gate(a,b,y);
//input a,b;
//output reg y;

//always @ (a,b)

//y = ~(a | b);

//endmodule;

// using data flow modelling
//module nor_gate(a,b,y);
//input a,b;
//output y;

//assign y = ~(a|b);

//endmodule;
