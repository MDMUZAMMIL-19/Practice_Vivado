`timescale 1ns / 1ps

module halfsubtractor_tb();
reg x,y;
wire bout,diff;
halfsubtractor uut(.x(x), .y(y), .bout(bout), .diff(diff));
initial begin
#10
x=0;y=0;
#10
x=0;y=0;
#10
x=0;y=1;
#10
x=0;y=1;
#10
x=1;y=0;
#10
x=1;y=0;
#10
x=1;y=1;
#10
x=1;y=1;
#10
$finish();
end
endmodule
