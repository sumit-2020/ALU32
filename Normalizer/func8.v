module func8(A, Z
	);

	// Assigning ports as in/out
	input [7: 0] A;
	output Z;

	//Logic

	wire [3:0] w;
	assign w[0] = A[0];

	grey_box m1(A[3], A[2], A[1], w[1]);
	black_box m2(A[7], A[6], A[5], A[4], w[3], w[2]);

	func4 m3(w, Z);

endmodule
