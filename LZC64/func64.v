module func64(A, Z
	);

	// Assigning ports as in/out
	input [63: 0] A;
	output Z;

	//Logic

	wire [31:0] w;
	assign w[0] = A[0];

	grey_box m1(A[3], A[2], A[1], w[1]);
	black_box m2(A[7], A[6], A[5], A[4], w[3], w[2]);
	black_box m3(A[11], A[10], A[9], A[8], w[5], w[4]);
	black_box m4(A[15], A[14], A[13], A[12], w[7], w[6]);
	black_box m5(A[19], A[18], A[17], A[16], w[9], w[8]);
	black_box m6(A[23], A[22], A[21], A[20], w[11], w[10]);
	black_box m7(A[27], A[26], A[25], A[24], w[13], w[12]);
	black_box m8(A[31], A[30], A[29], A[28], w[15], w[14]);
	black_box m9(A[35], A[34], A[33], A[32], w[17], w[16]);
	black_box m10(A[39], A[38], A[37], A[36], w[19], w[18]);
	black_box m11(A[43], A[42], A[41], A[40], w[21], w[20]);
	black_box m12(A[47], A[46], A[45], A[44], w[23], w[22]);
	black_box m13(A[51], A[50], A[49], A[48], w[25], w[24]);
	black_box m14(A[55], A[54], A[53], A[52], w[27], w[26]);
	black_box m15(A[59], A[58], A[57], A[56], w[29], w[28]);
	black_box m16(A[63], A[62], A[61], A[60], w[31], w[30]);

	func32 m17(w, Z);

endmodule
