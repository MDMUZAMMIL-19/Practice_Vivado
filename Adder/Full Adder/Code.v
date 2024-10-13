`timescale 1ns / 1ps
// using structural modelling
module fulladder(a,b,cin,cout,sum);
input a,b,cin;
output cout,sum;

assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(cin&a);
endmodule

//module fulladder(a,b,cin,cout,sum);
//input a,b,cin;
//output sum,cout;
//wire w1,w2,w3,w4;

//xor(w1,a,b);
//xor(sum,w1,cin);        //sum output

//and(w2,a,b);
//and(w3,b,cin);
//and(w4,cin,a);

//or(cout,w2,w3,w4);      //carry output

//endmodule