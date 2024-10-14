`timescale 1ns / 1ps

module pisoSR_tb();
    reg d, clk, rst;
    reg [3:0] temp;  // Parallel data input
    wire q;          // Serial output

    // Instantiate the PISO shift register module
    pisoSR dut(.clk(clk), .d(d), .rst(rst), .temp(temp), .q(q));

    // Clock generation: toggle every 5 time units
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0; d = 0; rst = 0; temp = 4'b0000;

        // Apply reset for the first 15 time units
        #5 rst = 1;
        //#10 rst = 0; 

        // Load the parallel data into `temp`
        temp = 4'b1011;  // Parallel input to be shifted out serially

        // Start shifting out the data
        #10 d = 1;  // Load signal for temp (start shifting on next cycles)
        #10 d = 0;  // Continue shifting
        #10 d = 0;  // Continue shifting
        #10 d = 0;  // Continue shifting

        // Finish the simulation after 50 time units
        #20 $finish;
    end

endmodule
