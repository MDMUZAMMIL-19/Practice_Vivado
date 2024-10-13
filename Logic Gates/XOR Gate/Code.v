`timescale 1ns / 1ps

// using structural modelling
//module xor_gate(a,b,y);
//input a,b;
//output y;
//xor(y,a,b);
//endmodule

// using behavioral modelling
module xor_gate(a,b,y);
input a,b;
output reg y;

always @ (a,b)

y = a^b;

endmodule;

// using data flow modelling
//module xor_gate(a,b,y);
//input a,b;
//output y;

//assign y = a^b;

//endmodule;
