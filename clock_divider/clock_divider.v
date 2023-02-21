module clock_divider(input clk,input rst,output clk_o);
parameter DV=4;
reg clk_reg;
reg[3:0] count;
always@(posedge clk)
begin
if(rst ==1'b0)
begin
clk_reg = 0;
count = 4'h0;
end
else
begin
if(count == (DV/2)-1)
begin
count <= 4'h0;
clk_reg <= clk_reg;
end
else
begin
count<=count+4'h1;
end
end
end
assign clk_o = clk_reg;
endmodule
