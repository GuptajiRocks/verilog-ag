// Verilog stimulus file.
// Please do not create a module in this file.
// Default verilog stimulus.
integer Bx, Sx, ALU, Cx, Mx, FMASK, ALUMASK, Ax;
reg[4:0] GUESS;
initial
begin
A[3:0] = 4’b0000;
B[3:0] = 4’b0000;
Cn_BAR = 1’b0;
M = 1’b0;
S[3:0] = 4’b0000;
FMASK = 4’b1111;
ALUMASK = 5’b11111;
/*
S = 4’b0010;
B = 4’b0000;
#150
for(Ax=0; Ax <= 15; Ax = Ax + 1’b1)
begin
A = Ax;
#150
GUESS = {1’b0, (A|˜B)} + !Cn_BAR;
$display("˜B: %b, A | ˜B: %d, !Cn_BAR: %b, 1111 + 1: %b",˜B,(A | ˜B),!Cn_BAR, 4’b1111+1’b1);
$display("%d",GUESS);
ALU = {!Co_BAR, F[3:0]};
$display("M: %b , S: %b , A: %d , B: %d , Cn_BAR: %d\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
*/
for(Mx = 0; Mx <= 1; Mx = Mx+1)
begin
M = Mx;
#150
for(Sx=0; Sx < 16; Sx = Sx + 1)
begin
S[3:0] = Sx;
#150
for(Cx = 0; Cx <= 1; Cx = Cx+1)
begin
Cn_BAR = Cx;
#150
for(Ax=0; Ax < 16; Ax = Ax+1)
begin
A[3:0] = Ax;
#150
for(Bx=0; Bx < 16; Bx = Bx+1)
begin
B[3:0] = Bx;
#150
ALU = (M == 0) ? {!Co_BAR, F[3:0]} & ALUMASK : F[3:0] & FMASK;
if(S == 0)
begin
GUESS = (M == 0) ? (A + !Cn_BAR) & ALUMASK : (˜A) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 1)
begin
GUESS = (M == 0) ? ((A | B) + !Cn_BAR) & ALUMASK : (˜(A | B)) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 2)
begin
GUESS = (M == 0) ? ({1’b0,((˜B) | A)} + !Cn_BAR) & ALUMASK : ((˜A) & B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 3)
begin
GUESS = (M == 0) ? (4’b1111 + !Cn_BAR) & ALUMASK : (0) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 4)
begin
GUESS = (M == 0) ? (A + {1’b0, (A & ˜B)} + !Cn_BAR) & ALUMASK : (˜(A & B)) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 5)
begin
GUESS = (M == 0) ? ((A | B) + {1’b0, (A & ˜B)} + !Cn_BAR) & ALUMASK : (˜B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 6)
begin
GUESS = (M == 0) ? ( A + {1’b0,˜B} + !Cn_BAR) & ALUMASK : (AˆB) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 7)
begin
GUESS = (M == 0) ? ( { 1’b0,(A & ˜B) } + 4’b1111 + !Cn_BAR) & ALUMASK : (A & (˜B)) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 8)
begin
GUESS = (M == 0) ? (A + (A & B) + !Cn_BAR) & ALUMASK : (˜A | B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 9)
begin
GUESS = (M == 0) ? (A + B + !Cn_BAR) & ALUMASK : (˜(AˆB)) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 10)
begin
GUESS = (M == 0) ? ( {1’b0, (A | ˜B)} + (A & B) + !Cn_BAR) & ALUMASK : (B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 11)
begin
GUESS = (M == 0) ? ({1’b0, (A & B)} + 4’b1111 + !Cn_BAR) & ALUMASK : (A & B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 12)
begin
GUESS = (M == 0) ? ((A + A) + !Cn_BAR) & ALUMASK : 15;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 13)
begin
GUESS = (M == 0) ? ( (A | B) + A + !Cn_BAR ) & ALUMASK : (A | ˜B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 14)
begin
GUESS = (M == 0) ? ( {1’b0, (A | ˜B)} + A + !Cn_BAR ) & ALUMASK : (A | B) & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
if(S == 15)
begin
GUESS = (M == 0) ? ({1’b0, A} + 4’b1111 + !Cn_BAR) & ALUMASK : A & FMASK;
if(GUESS != ALU)
begin
$display("M: %b , S: %b , A: %b , B: %b , Cn_BAR: %b\nALU: %b , Guess: %b , Difference: %b\n",M,S,A,B,Cn_BAR,ALU[4:0],GUESS[4:0],ALU[4:0]ˆGUESS[4:0]);
end
end
end //B
end //A
end //S
end //Cn_BAR
end //M
end //Initial
