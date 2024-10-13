`timescale 1ns / 1ps
// using structural modelling
//module xnor_gate(a,b,y);
//input a,b;
//output y;
//xnor(y,a,b);
//endmodule

//// using behavioral modelling
//module xnor_gate(a,b,y);
//input a,b;
//output reg y;

//always @ (a,b)

//y = ~(a^b);

//endmodule;

// using data flow modelling
module xnor_gate(a,b,y);
input a,b;
output y;

assign y = ~(a^b);

endmodule;