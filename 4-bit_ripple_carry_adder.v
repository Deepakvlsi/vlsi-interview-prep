module fulladder (a,b,sum,cin,co);
  input a,b,cin;
  output wire sum, co;
  assign sum = a ^ b ^ cin;    //You cannot use assign with reg types. assign is for wire, not reg.
  assign co = (a & b) | (b & cin) | (a & cin);
endmodule

module ripplecarry_4b(A, B, Cin, Sum, Cout);
  input [3:0]A,B;
  input Cin;
  output [3:0]Sum;
  output Cout;

  wire c1, c2, c3;
  fulladder fa0 (.a(A[0]), .b(B[0]), .cin(Cin), .sum(Sum[0]), .co(c1));
  fulladder fa1 (.a(A[1]), .b(B[1]), .cin(c1), .sum(Sum[1]), .co(c2));
  fulladder fa2 (.a(A[2]), .b(B[2]), .cin(c2), .sum(Sum[2]), .co(c3));
  fulladder fa3 (.a(A[3]), .b(B[3]), .cin(c3), .sum(Sum[3]), .co(Cout));
endmodule
