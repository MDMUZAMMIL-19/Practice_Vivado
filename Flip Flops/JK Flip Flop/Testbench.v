`timescale 1ns / 1ps

module jkff_tb();
reg j,k,clk;
wire q,q_bar;

jkff dut(.j(j), .k(k), .clk(clk), .q(q), .q_bar(q_bar));

always begin
    #5 clk = ~clk;
end

initial begin
    clk=0;
    j=0;
    k=0;
end

always @(posedge clk) begin

#5 j=0; k=0;
$display(j,k,q,q_bar);
#5 j=0; k=1;
$display(j,k,q,q_bar);
#5 j=1; k=0;
$display(j,k,q,q_bar);
#5 j=1; k=1;
$display(j,k,q,q_bar);

$finish();
end
endmodule
