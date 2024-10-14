`timescale 1ns / 1ps

module sipoSR(q, d, clk, rst, temp);
    input d, clk, rst;
    output reg [3:0] q, temp;

    always @ (posedge clk) begin
        if (!rst) begin
            q <= 4'b0000;      // Reset the output q to 0
            temp <= 4'b0000;   // Reset temp to 0
        end
        else begin
            temp <= temp << 1; // Shift the register left
            temp[0] <= d;      // Assign the serial input to temp[0]
            q <= temp;         // Assign the shifted value to parallel output
        end
    end
endmodule
