module carry_ripple_adder(inA, inB, cin, sum, cout
	);

	// Assigning ports as in/out
	input [31:0] inA, inB;
	input cin;
	output [31:0] sum;
	output cout;

	// Logic connections

	full_adder fa0(inA[0], inB[0], cin, sum[0], c1);
	full_adder fa1(inA[1], inB[1], c1, sum[1], c2);
	full_adder fa2(inA[2], inB[2], c2, sum[2], c3);
	full_adder fa3(inA[3], inB[3], c3, sum[3], c4);
	full_adder fa4(inA[4], inB[4], c4, sum[4], c5);
	full_adder fa5(inA[5], inB[5], c5, sum[5], c6);
	full_adder fa6(inA[6], inB[6], c6, sum[6], c7);
	full_adder fa7(inA[7], inB[7], c7, sum[7], c8);
	full_adder fa8(inA[8], inB[8], c8, sum[8], c9);
	full_adder fa9(inA[9], inB[9], c9, sum[9], c10);
	full_adder fa10(inA[10], inB[10], c10, sum[10], c11);
	full_adder fa11(inA[11], inB[11], c11, sum[11], c12);
	full_adder fa12(inA[12], inB[12], c12, sum[12], c13);
	full_adder fa13(inA[13], inB[13], c13, sum[13], c14);
	full_adder fa14(inA[14], inB[14], c14, sum[14], c15);
	full_adder fa15(inA[15], inB[15], c15, sum[15], c16);
	full_adder fa16(inA[16], inB[16], c16, sum[16], c17);
	full_adder fa17(inA[17], inB[17], c17, sum[17], c18);
	full_adder fa18(inA[18], inB[18], c18, sum[18], c19);
	full_adder fa19(inA[19], inB[19], c19, sum[19], c20);
	full_adder fa20(inA[20], inB[20], c20, sum[20], c21);
	full_adder fa21(inA[21], inB[21], c21, sum[21], c22);
	full_adder fa22(inA[22], inB[22], c22, sum[22], c23);
	full_adder fa23(inA[23], inB[23], c23, sum[23], c24);
	full_adder fa24(inA[24], inB[24], c24, sum[24], c25);
	full_adder fa25(inA[25], inB[25], c25, sum[25], c26);
	full_adder fa26(inA[26], inB[26], c26, sum[26], c27);
	full_adder fa27(inA[27], inB[27], c27, sum[27], c28);
	full_adder fa28(inA[28], inB[28], c28, sum[28], c29);
	full_adder fa29(inA[29], inB[29], c29, sum[29], c30);
	full_adder fa30(inA[30], inB[30], c30, sum[30], c31);
	full_adder fa31(inA[31], inB[31], c31, sum[31], cout);

endmodule
