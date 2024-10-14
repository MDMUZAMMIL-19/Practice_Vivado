`timescale 1ns / 1ps

module sipoSR_tb();
reg d,clk,rst;
wire [3:0] q;

sipoSR dut(.clk(clk), .d(d), .q(q), .rst(rst));
always #5 clk = ~clk;

initial begin
    clk=0; d=0; rst=0;
    
    #15 rst = 1;    // releasing reset
    
    #10 d=1;
    #10 d=0;
    #10 d=0;
    #10 d=1;
$finish();
end
endmodule
