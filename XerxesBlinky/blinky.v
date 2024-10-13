`timescale 1ns / 1ps

module blinky(
    input clk10,
    input dip,
    output led
    );

reg [31:0] counter = 0;
reg ledstate = 0;

assign led = ledstate;

always @ (posedge clk10)
begin

counter <= counter+1;

if(dip) 
ledstate<=counter[22];
else
ledstate<=counter[23];
end 

endmodule
