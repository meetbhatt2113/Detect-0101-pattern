module over_0101(clk,rst,in,out);
input clk,rst,in;
output reg out;
parameter [1:0]s0 = 2'b00;
parameter [1:0]s1 = 2'b01;
parameter [1:0]s2 = 2'b10;
parameter [1:0]s3 = 2'b11;
reg [1:0] cst=s0,nst=s0;
always@(posedge clk)
begin
if(rst)
begin
out=0;
cst=s0;
nst=s1;
end
else
begin
cst=nst;
case(cst)
s0 :
if (in)
begin
out = 0;
nst = s0;
end else begin out = 0;
nst = s1; end

s1 :
if (in) begin out = 0; nst = s2;

end else begin out = 0;
nst = s1; end

s2 :
if (in) begin out = 0; nst = s0; end
else begin out = 0; nst = s3; end

s3 :
if (in) begin out = 1; nst = s2; end
else begin out = 0; nst = s1; end

endcase 
end
end
