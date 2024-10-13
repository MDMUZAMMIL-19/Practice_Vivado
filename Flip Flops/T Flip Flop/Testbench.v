`timescale 1ns / 1ps

module tff_tb();
  reg clk, t, rstn;
  wire q;

  // Instantiate the T flip-flop
  tff dut(.clk(clk), .t(t), .q(q), .rstn(rstn));

  // Clock generation: Toggle every 10ns
  always #10 clk = ~clk;

  initial begin
    // Initialize signals
    clk = 0; t = 0; rstn = 0;
    
    // Apply reset
    #15 rstn = 1;  // Release reset after 15ns to ensure proper reset
    
    // Test sequence
    #10 t = 1;  // T = 1, expect q to toggle
    #20 t = 0;  // T = 0, q should hold its value
    #20 t = 1;  // T = 1, expect q to toggle again
    #20 t = 0;  // T = 0, q should hold its value
    
    // Finish simulation after the test
    #20 $finish;
  end
endmodule
