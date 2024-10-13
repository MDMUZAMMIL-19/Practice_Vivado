`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 12:12:05
// Design Name: 
// Module Name: not_gate_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module not_gate_tb(
    );
reg a;
wire y;
not_gate uut(.a(a),
             .y(y));
initial begin
//test case 1
a=0;
#10
//test case 2
a=1;
#10
$finish();
end
    
endmodule
