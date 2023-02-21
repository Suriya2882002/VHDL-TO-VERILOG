module clock_gating(clk, en, clk_o);
input clk;
input en;
output clk_o;
reg en_latched;
always@(negedge clk)
assign en_latched = en;
assign clk_o = en_latched && clk;
endmodule
