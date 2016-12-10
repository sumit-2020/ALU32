module F32(inA, Z
	);

	// Assigning ports as in/out
	input [31:0] inA;
	output Z;

	wire [31:0] A;
	alt_invert #(32) m(inA, A);

	wire Zn;
	func32 m2(A, Zn);

	assign Z = ~Zn;

endmodule
