`timescale 1ns / 1ps

module FBC_tb();
reg clk, rst;
wire [3:0] count;

FBC dut(.clk(clk), .count(count), .rst(rst));
always #5 clk=~clk;

initial begin
    clk<=0; rst<=0;
    
    #10 rst<=1;
    #30 rst<=0;
    #20 rst<=1;
    
    #10 $finish();
    end
    
endmodule
