module d_ff (d, q, clk);
  input wire d, clk;
  output reg q;
  always @ (posedge clk) begin
    q = d;
  end
endmodule
