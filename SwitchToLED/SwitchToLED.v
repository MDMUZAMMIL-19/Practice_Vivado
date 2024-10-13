`timescale 1ns / 1ps

module SwitchToLED(
    input slideSwitch,
    output led
);

assign led = slideSwitch;
endmodule
