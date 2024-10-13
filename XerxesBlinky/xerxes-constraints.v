#Clock
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {CLK12MHZ}];
create_clock -add -name sys_clk -period 83.333 -waveform {0 41.667} [get_ports {CLK12MHZ}];

#LED
set_property -dict { PACKAGE_PIN A2 IOSTANDARD LVCMOS33} [get_ports {LED}];

# DIP Switch
set_property -dict { PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports {DIP}];

In Vivado this file is saved as .xdc file.
