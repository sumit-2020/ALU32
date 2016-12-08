module black_box(gik, pik, gk_1j, pk_1j, gij, pij
	);

	// Assigning ports as in/out
	input gik, pik, gk_1j, pk_1j;
	output gij, pij;

	// Logic connections
	grey_box	m1(gik, pik, gk_1j, gij);
	and 		a1(pij, pik, pk_1j);

endmodule
