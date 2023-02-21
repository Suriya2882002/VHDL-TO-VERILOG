module clock_divider_tb;
reg clk;
reg rst;
wire clk_o;
clock_divider dut(.clk(clk),.rst(rst),.clk_o(clk_o));
initial 
begin
clk=0;
rst=0;
#50 
rst=1;
end
always #10 clk = ~clk;
initial
#100
$finish;
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule
