`timescale 1ns / 1ps
// using data flow modelling
//module or_gate(a,b,y  
//    );
//input a,b;
//output y;
//assign y = a | b;
    
//endmodule

// using behavioral modelling
//module or_gate(a,b,y);
//input a,b;
//output reg y;

//always @ (a,b)

//y = a | b;

//endmodule;

// using structural modelling
module or_gate(a,b,y);
input a,b;
output y;

or(y,a,b);

endmodule;
