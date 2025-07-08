module priority_encoder8to3 (
  input en,
  input [7:0] i,
  output reg [2:0] y
);
  always @ (en or i)
  begin
    if (en == 1) begin
      casex (i)
        8'b1xxxxxxx: y = 3'b111;
        8'b01xxxxxx: y = 3'b110;
        8'b001xxxxx: y = 3'b101;
        8'b0001xxxx: y = 3'b100;
        8'b00001xxx: y = 3'b011;
        8'b000001xx: y = 3'b010;
        8'b0000001x: y = 3'b001;
        8'b00000001: y = 3'b000;
        default:     y = 3'bzzz; // Output high impedance if no input is active
      endcase
    end
    else begin
      y = 3'bzzz; // Disabled state
    end
  end
endmodule
