module func4(A, Z
	);

	// Assigning ports as in/out
	input [3: 0] A;
	output Z;

	//Logic

	wire [1:0] w;
	assign w[0] = A[0];

	grey_box m1(A[3], A[2], A[1], w[1]);

	assign Z = w[1];	

endmodule
