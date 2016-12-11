module func16(A, Z
	);

	// Assigning ports as in/out
	input [15: 0] A;
	output Z;

	//Logic

	wire [7:0] w;
	assign w[0] = A[0];

	grey_box m1(A[3], A[2], A[1], w[1]);
	black_box m2(A[7], A[6], A[5], A[4], w[3], w[2]);
	black_box m3(A[11], A[10], A[9], A[8], w[5], w[4]);
	black_box m4(A[15], A[14], A[13], A[12], w[7], w[6]);

	func8 m5(w, Z);

endmodule
