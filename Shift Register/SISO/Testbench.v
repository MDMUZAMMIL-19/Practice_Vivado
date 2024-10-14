`timescale 1ns / 1ps

module sisoSR_tb();
reg d,clk,rst;
wire [3:0] q;

sisoSR dut(.clk(clk), .q(q), .rst(rst), .d(d));

always #5 clk = ~clk;

initial begin
    clk=0; rst=0; d=0;
    
    #15 rst=1;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #10 d=0;
    
    #10 $finish();
end
endmodule
