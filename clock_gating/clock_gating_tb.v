module clock_gating_tb;
reg clk;
reg en;
wire clk_o;
clock_gating clock(.clk(clk),.en(en),.clk_o(clk_o));
initial
begin
$dumpfile("clkgating.vcd");
$dumpvars();
end
always #5 clk = ~clk;
initial
begin
en=0;
clk=0;
#8 en=1;
#9 en=9;
#20 $finish;
end
endmodule
