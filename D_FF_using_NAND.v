module dff_nand (d, clk, q, qb);
  input d, clk;
  output q;
  wire t1, t2, t3, qb;
  always @ (posedge clk) begin
    nand g1 (t1, d, clk);
    not g2 (t2, d);
    nand g3 (t3, t2, clk);
    nand g4 (q, t1, qb);
    nand g5 (qb, t3, q);
  end
endmodule
