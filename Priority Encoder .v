dule prioirity_encoder8to3 (en, i, y);
  input en;
  input i[7:0];
  output reg y[2:0];
  always @ (en, i)
    begin
      if (en==1)
        begin
          if (i[7]==1)
            y= 3'b111;
          if (i[6]==1)
            y = 3'b110;
          if (i[5]==1)
            y = 3'b101;
          if (i[4]==1)
            y= 3'b100;
          if (i[3]==1)
            y = 3'b011;
          if (i[2]==1])
            y = 3'b010;
          if (i[1] ==001)
            y = 3'b001;
          if (i[0] == 1)
            y = 3'b000;
          else
            y= 3'bzzzp;

        end module
