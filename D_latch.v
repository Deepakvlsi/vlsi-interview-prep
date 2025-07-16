module d_latch (d,q,qb,en,rst);
  input d,en,rst;
  output reg q,qb;
  always @ (en or d or posedge rst) begin
    if (rst)
      q <= 0;
    else if (en) 
      q <= d;
    qb <= !q;
  end
endmodule


