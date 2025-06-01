module graytobin(gray, binary);
  input  [2:0] gray;
  output [2:0] binary;

  assign binary[0] = gray[2] ^ gray[1] ^ gray[0];
  assign binary[1] = gray[2] ^ gray[1];
  assign binary[2] = gray[2];

endmodule
