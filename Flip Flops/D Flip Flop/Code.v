`timescale 1ns / 1ps

module dff(d, clk, rstn, q);
    input d,clk,rstn;
    output reg q;
    
    always @ (posedge clk) begin
        if(!rstn) begin
            q<=0;
            end
        else begin
            q<=d;
        end
end
endmodule
