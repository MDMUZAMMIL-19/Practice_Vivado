`timescale 1ns / 1ps

module sisoSR(d,q,rst,clk);
input d,clk,rst;
output reg [3:0] q;

always @ (posedge clk) begin
    if(!rst)
        q<=4'b0000;         // initialising output as 0
    else    
        q<={d,q[2:0]};      // concatenating the input "d" with "q"  
end
endmodule
