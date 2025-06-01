module d_tb;
	reg A0,A1,A2,A3,B0,B1,B2,B3,I;
	wire S10,S11,S12,S13,S10C,S11C,S12C,S13C, S20,S21,S22,S23,S20C,S21C,S22C,S23C, S30,S31,S32,S33,S30C,S31C,S32C,S33C, P0,P1,P2,P3,P4,P5,P6,P7;
	d inst(
	.A0(A0),
	.A1(A1),
	.A2(A2),
	.A3(A3),
	.B0(B0),
	.B1(B1),
	.B2(B2),
	.B3(B3),
	.I(I),

	.S10(S10),
	.S11(S11),
	.S12(S12),
	.S13(S13),
	.S10C(S10C),
	.S11C(S11C),
	.S12C(S12C),
	.S13C(S13C),

	.S20(S20),
	.S21(S21),
	.S22(S22),
	.S23(S23),
	.S20C(S20C),
	.S21C(S21C),
	.S22C(S22C),
	.S23C(S23C),	
	
	.S30(S30),
	.S31(S31),
	.S32(S32),
	.S33(S33),
	.S30C(S30C),
	.S31C(S31C),
	.S32C(S32C),
	.S33C(S33C),

	.P0(P0),
	.P1(P1),
	.P2(P2),
	.P3(P3),
	.P4(P4),
	.P5(P5),
	.P6(P6),
	.P7(P7)

	);

initial begin
$dumpfile("tb.vcd"); // Create a VCD file for waveform viewing
$dumpvars; // Dump signals to the VCD file

	A0 = 0;A1 = 1;A2 = 0;A3 = 1; B0 = 0;B1 = 0;B2 = 1;B3 = 1; I=0; // 0001111
	#10;
	A0 = 1;A1 = 0;A2 = 0;A3 = 1; B0 = 0;B1 = 1;B2 = 0;B3 = 0; I=0; // 0100100
	#10;



$finish;
end
endmodule