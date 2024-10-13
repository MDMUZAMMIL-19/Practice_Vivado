`timescale 1ns / 1ps

module jkff(j,k,clk,q,q_bar);

input j,k,clk;
output reg q;
output q_bar;

assign q_bar = ~q;
always @(posedge clk) begin
    case({j,k})
        2'b00 : q<=q;
        2'b01 : q<=1'b0;
        2'b10 : q<=1'b1;
        2'b11 : q<=q_bar;
    endcase
end
endmodule
