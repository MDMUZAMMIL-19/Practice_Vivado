`timescale 1ns / 1ps

// using data flow modelling
//module and_gate(
//    input a,
//    input b,
//    output y
//    );

//assign y = a & b;
//endmodule

// using structural modelling
//module and_gate(a,b,y);
//input a,b;
//output y;

//and(y,a,b);

//endmodule;

// using behavioral modelling
module and_gate(a,b,y);
input a,b;
output reg y; // y must be a "reg" when assigned in an always block

always @ (a,b)
y = a & b;

endmodule;



