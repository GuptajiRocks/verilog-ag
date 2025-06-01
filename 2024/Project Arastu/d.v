module d(
    input A0,A1,A2,A3,B0,B1,B2,B3,B4,I,
    output S10,S11,S12,S13,S10C,S11C,S12C,S13C, S20,S21,S22,S23,S20C,S21C,S22C,S23C, S30,S31,S32,S33,S30C,S31C,S32C,S33C, P0,P1,P2,P3,P4,P5,P6,P7
);

    assign P0 = B0 & A0;

    // ADDER 1 _____________________________________________________________________________
    assign S10 = (B0&A1) ^ (B1&A0) ^ I;
    assign S10C = (B0&A1)&(B1&A0) | (B0&A1)&I | (B1&A0)&I;

    assign S11 = (B0&A2) ^ (B1&A1) ^ S10C;
    assign S11C = (B0&A2)&(B1&A1) | (B0&A2)&S10C | (B1&A1)&S10C;

    assign S12 = (B0&A3) ^ (B1&A2) ^ S11C;
    assign S12C = (B0&A3)&(B1&A2) | (B0&A3)&S11C | (B1&A2)&S11C;

    assign S13 = I ^ (B1&A3) ^ S12C;
    assign S13C = I&(B1&A3) | I&S12C | (B1&A3)&S12C;
    
    assign P1 = S10;

    // ADDER 2 _____________________________________________________________________________

    assign S20 = S11 ^ (B2&A0) ^ I;
    assign S20C = S11&(B2&A0) | S11&I | (B2&A0)&I;

    assign S21 = S12 ^ (B2&A1) ^ S20C;
    assign S21C = S12&(B2&A1) | S12&S20C | (B2&A1)&S20C;

    assign S22 = S13 ^ (B2&A2) ^ S21C;
    assign S22C = S13&(B2&A2) | S13&S21C | (B2&A2)&S21C;

    assign S23 = S13C ^ (B2&A3) ^ S22C;
    assign S23C = S13C&(B2&A3) | S13C&S22C | (B2&A3)&S22C;
    
    assign P2 = S20;

    // ADDER 3 _____________________________________________________________________________

    assign S30 = S21 ^ (B3&A0) ^ I;
    assign S30C = S21&(B3&A0) | S21&I | (B3&A0)&I;

    assign S31 = S22 ^ (B3&A1) ^ S30C;
    assign S31C = S22&(B3&A1) | S22&S30C | (B3&A1)&S30C;

    assign S32 = S23 ^ (B3&A2) ^ S31C;
    assign S32C = S23&(B3&A2) | S23&S31C | (B3&A2)&S31C;

    assign S33 = S23C ^ (B3&A3) ^ S32C;
    assign S33C = S23C&(B3&A3) | S23C&S32C | (B3&A3)&S32C;
    
    assign P3 = S30;
    assign P4 = S31;
    assign P5 = S32;
    assign P6 = S33;
    assign P7 = S33C;

endmodule