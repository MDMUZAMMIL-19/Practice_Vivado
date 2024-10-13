`timescale 1ns / 1ps

// using structural modelling
//module not_gate(a,y);
//input a;
//output y;

//not(y,a);
    
//endmodule


// using dataflow modelling
//module not_gate(a,y);
//input a;
//output y;

//assign y = ~a;

//endmodule


// using behavioral modelling
module not_gate(a,y);
input a;
output reg y;

always @(a)

y = ~a;

endmodule
