`timescale 1ns / 1ps
//using structural modelling
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;

xor(sum,a,b);
and(carry,a,b);

endmodule

// using behavioral modelling
//module halfadder(a,b,sum,carry);
//input a,b;
//output sum,carry;

//assign sum = a^b;
//assign carry = a&b;

//endmodule;

// using dataflow modelling

//module halfadder(a,b,sum,carry);
//input a,b;
//output sum,carry;

//always @ (a,b)

//sum = a^b;
//carry = a&b;

//endmodule;
