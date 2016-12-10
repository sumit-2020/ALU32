module F16(inA, Z
	);

	// Assigning ports as in/out
	input [15:0] inA;
	output Z;

	wire [15:0] A;
	alt_invert #(16) m(inA, A);

	wire Zn;
	func16 m2(A, Zn);

	assign Z = ~Zn;

endmodule
