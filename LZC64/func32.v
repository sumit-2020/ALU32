module func32(A, Z
	);

	// Assigning ports as in/out
	input [31: 0] A;
	output Z;

	//Logic

	wire [15:0] w;
	assign w[0] = A[0];

	grey_box m1(A[3], A[2], A[1], w[1]);
	black_box m2(A[7], A[6], A[5], A[4], w[3], w[2]);
	black_box m3(A[11], A[10], A[9], A[8], w[5], w[4]);
	black_box m4(A[15], A[14], A[13], A[12], w[7], w[6]);
	black_box m5(A[19], A[18], A[17], A[16], w[9], w[8]);
	black_box m6(A[23], A[22], A[21], A[20], w[11], w[10]);
	black_box m7(A[27], A[26], A[25], A[24], w[13], w[12]);
	black_box m8(A[31], A[30], A[29], A[28], w[15], w[14]);

	func16 m9(w, Z);

endmodule
