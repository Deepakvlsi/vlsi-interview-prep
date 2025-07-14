module mux_8to1(i,y,s);
  input [7:0]i;
  input [2:0]s;
  output reg y;                  // Since, y is assigned inside an always block, so it must be declared as reg.
  always @ (*) begin
    case (s)
      3'b000: y = i[0];
      3'b001: y = i[1];
      3'b010: y = i[2];
      3'b011: y = i[3];
      3'b100: y = i[4];
      3'b101: y = i[5];
      3'b110: y = i[6];
      3'b111: y = i[7];
    endcase
      end 
      endmodule

// module mux_8to1(i,y,s);
// input [7:0]i;
// input [2:0]s;
// output y;
// assign y = i[s];
// endmodule
