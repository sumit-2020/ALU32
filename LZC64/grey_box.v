module grey_box(gik, pik, gk_1j, gij
	);

	// Assigning ports as in/out
	input gik, pik, gk_1j;
	output gij;

	// Logic connections
	assign gij = gik | (pik & gk_1j);

endmodule
