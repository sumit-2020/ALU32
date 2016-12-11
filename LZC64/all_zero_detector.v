module all_zero_detector(inA, V
	);

	parameter n = 64;

	// Assigning ports as in/out
	input [n-1 : 0] inA;
	output V;

	assign V = (inA == 16'h0000000000000000) ? 1 : 0;

endmodule
