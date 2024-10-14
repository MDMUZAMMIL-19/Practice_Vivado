`timescale 1ns / 1ps

module pisoSR(d, q, clk, rst, temp);
    input d, clk, rst;
    input [3:0] temp;
    output reg q;          // Serial output

    reg [3:0] shift_reg;   // Internal register to store the parallel data

    always @ (posedge clk) begin
        if (!rst) begin
            shift_reg <= 4'b0000;  // Reset the shift register
            q <= 1'b0;             // Reset the serial output
        end
        else begin
            if (d) begin
                shift_reg <= temp;  // Load the parallel input `temp` into the shift register
            end
            else begin
                q <= shift_reg[3];  // Output the MSB of the shift register
                shift_reg <= shift_reg << 1;  // Shift the register left (bitwise shift)
            end
        end
    end
endmodule
