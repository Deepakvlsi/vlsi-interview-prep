module d_ff(d,clk,rst,q,qb);
input d, clk, rst;
  output reg q, qb;
  always @ (posedge clk, posedge rst) begin
    if (rst) 
    q <= 0;
    else 
      q <= d;
    qb <= !q;
  end 
endmodule
