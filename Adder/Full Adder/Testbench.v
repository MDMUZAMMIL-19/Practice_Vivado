`timescale 1ns / 1ps

module fulladder_tb();
reg a,b,cin;
wire sum,cout;
fulladder uut(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
initial begin
#10
a=0;b=0;cin=0;
#10
a=0;b=0;cin=1;
#10
a=0;b=1;cin=0;
#10
a=0;b=1;cin=1;
#10
a=1;b=0;cin=0;
#10
a=1;b=0;cin=1;
#10
a=1;b=1;cin=0;
#10
a=1;b=1;cin=1;
#10
$stop();
end
endmodule
