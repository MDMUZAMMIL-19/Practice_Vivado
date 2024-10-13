`timescale 10ns / 100ps

module tb_blinky();

reg clk10, dip;
wire led;

blinky dut(.clk10(clk10), .dip(dip), .led(led));

initial begin
clk10<=0;
dip<=0;
end

always
    begin
    #5
    clk10=~clk10;
    end

endmodule
