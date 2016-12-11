module LZC8(inA, Z
	);

	// Assigning ports as in/out
	input [7:0] inA;
	output Z;

	wire [7:0] A;
	alt_invert #(8) m(inA, A);

	wire Zn;
	func8 m2(A, Zn);

	assign Z = ~Zn;

endmodule
