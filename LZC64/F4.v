module F4(inA, Z
	);

	// Assigning ports as in/out
	input [3:0] inA;
	output Z;

	wire [3:0] A;
	alt_invert #(4) m(inA, A);

	wire Zn;
	func4 m2(A, Zn);

	assign Z = ~Zn;

endmodule
