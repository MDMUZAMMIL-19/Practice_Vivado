`timescale 1ns / 1ps

module pipoSR(d,q,clk,rst);
input clk,rst;
input [3:0] d;
output [3:0] q;

wire [3:0] d;
reg [3:0] q;

always @ (posedge clk) begin
    if(!rst)begin
        q<=4'b0000;
    end
    else begin
        q<=d;
    end
end
endmodule
