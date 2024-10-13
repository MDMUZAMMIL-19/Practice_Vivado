`timescale 1ns / 1ps

module fullsubtractor_tb();
reg x,y,bin;
wire bout,diff;
fullsubtractor uut(.x(x), .y(y), .bin(bin), .bout(bout), .diff(diff));
initial begin
#10
x=0;y=0;bin=0;
#10
x=0;y=0;bin=1;
#10
x=0;y=1;bin=0;
#10
x=0;y=1;bin=1;
#10
x=1;y=0;bin=0;
#10
x=1;y=0;bin=1;
#10
x=1;y=1;bin=0;
#10
x=1;y=1;bin=1;
#10
$finish();
end
endmodule
