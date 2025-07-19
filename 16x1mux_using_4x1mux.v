module mux_4x1 (i,sel,y);
  input [3:0]i;
  input [1:0]sel;
  output reg y;
  always @ (*) begin
 
    case (sel) 
      2'b00: y = i[0];
      2'b01: y = i[1];
      2'b10: y = i[2];
      2'b11: y = i[3];

      // or we can also use assign statement (in 2 ways) - 1st method
      //  assign y = i[sel];
      // 2nd method
      //    assign y = (sel == 2'b00) ? i[0] :
       //          (sel == 2'b01) ? i[1] :
         //        (sel == 2'b10) ? i[2] :
            //     i[3];
      
    endcase
  end
endmodule

module mux16x1_using_4x1 (in, sel, out);
  input [15:0]in;
  input [3:0]sel;
  output out;
  wire [3:0]mux_out;
  mux_4x1 m1 (.i(in[3:0]), .sel(sel[1:0]), .y(mux_out[0]));
  mux_4x1 m2 (.i(in[7:4]), .sel(sel[1:0]), .y(mux_out[1]));
  mux_4x1 m3 (.i(in[11:8]), .sel(sel[1:0]), .y(mux_out[2]));
  mux_4x1 m4 (.i(in[15:12]), .sel(sel[1:0]), .y(mux_out[3]));

  mux_4x1 m5 (.i(mux_out), .sel(sel[3:2]), .y(out));

endmodule
