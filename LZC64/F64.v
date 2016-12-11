module F64(inA, Z
	);

	// Assigning ports as in/out
	input [63:0] inA;
	output Z;

	wire [63:0] A;
	alt_invert #(64) m(inA, A);

	wire Zn;
	func64 m2(A, Zn);

	assign Z = ~Zn;

endmodule
