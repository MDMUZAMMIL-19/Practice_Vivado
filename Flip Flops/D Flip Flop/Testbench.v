`timescale 1ns / 1ps

module dff_tb();
    
    reg d,clk,rstn;
    wire q;
    
    dff dut(.clk(clk), .d(d), .rstn(rstn), .q(q));
    always #5 clk = ~clk;
    
    initial begin
        clk=0; rstn=0; d=0;
        
        #15 rstn=1;     // releasing reset after 15 sec
        
        #15 d=1;
        #15 d=0;
        #15 d=1;
        #15 d=0;
        #15;
    $finish;
    end
endmodule
