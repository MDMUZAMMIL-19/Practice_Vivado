`timescale 1ns / 1ps

module nand_gate_tb(
    );
reg t_a,t_b;
wire t_y;
nand_gate uut(.a(t_a), .b(t_b), .y(t_y));
initial begin
#10
t_a=0; t_b=0;
#10
t_a=0; t_b=1;
#10
t_a=1; t_b=0;
#10
t_a=1; t_b=1;
#10
$stop();
end
endmodule
