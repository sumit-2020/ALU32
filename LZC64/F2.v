module F2(inA, Z
	);

	// Assigning ports as in/out
	input [1:0] inA;
	output Z;

	assign Z = ~inA[1];

endmodule
