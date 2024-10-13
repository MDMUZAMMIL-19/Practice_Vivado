`timescale 1ns / 1ps

module srff_tb();
reg s, r, clk, rst;
wire q;
wire q_bar;

srff dut(.s(s), .r(r), .clk(clk), .q(q), .q_bar(q_bar), .rst(rst));

always #5 clk = ~clk;
initial begin
clk=0; rst=0;
end
initial begin
s=0;r=0;        // test case 1: no change
#5 $display(s,r,q,q_bar);

s=0;r=1;        // test case 2: q_bar=1
#5 $display(s,r,q,q_bar);

s=1;r=0;        // test case 2: q=1
#5 $display(s,r,q,q_bar);

s=1;r=1;        // test case 2: invalid state
#5 $display(s,r,q,q_bar);

s=0;r=0;        // test case 1: no change
#5 $display(s,r,q,q_bar);

#5 $finish();

end

endmodule
