module cla_4bit (a,b,cin,sum,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output cout;
  wire [3:0] G, P, C;
  
  // Generate and Propagate
  assign G = a & b;
  assign P = (a ^ b) & cin;
 
  // CLA Logic
  //Ci+1 = Gi + Pi.Ci
  assign C[0] = cin;
  assign C[1] = G[0] | (P[0] & C[0]);
  assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
  assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0]);
   
  // Sum Calculation
  // Si = Pi xor Ci
  assign Sum[0] = P[0] ^ C[0];
  assign Sum[1] = P[1] ^ C[1];
  assign Sum[2] = P[2] ^ C[2];
  assign Sum[3] = P[3] ^ C[3];

  // Final Carry-Out
  assign Cout = G[3] | (P[3] & C[3]);
