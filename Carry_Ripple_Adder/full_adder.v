module full_adder(inA, inB, inC, sum, carry
	);

	// Assigning ports as in/out
	input inA, inB, inC;
	output sum, carry;

	// Logic
	
	/// sum = a^b^c
	xor(sum, inA, inB, inC);

	/// carry = ab | bc | ca
	assign carry = (inA*inB) | (inB*inC) | (inC*inA);

endmodule
