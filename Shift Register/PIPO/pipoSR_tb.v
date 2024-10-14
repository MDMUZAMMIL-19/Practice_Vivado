`timescale 1ns / 1ps

module pipoSR_tb();
reg clk, rst;
reg [3:0] d;
wire [3:0] q;

pipoSR dut(.clk(clk), .q(q), .d(d), .rst(rst));

always #5 clk = ~clk;

initial begin
    clk=0; d=4'b0000; rst=0;
    
    #15 rst=1;
    
    #10 d=4'b0001; 
    #10 d=4'b0010; 
    #10 d=4'b0100; 
    #10 d=4'b1000; 
    
    $finish();
    
end
endmodule
