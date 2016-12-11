module alt_invert(inA, A
	);

	parameter n = 8;
	
	// Assigning ports as in/out
	input [n-1 : 0] inA;
	output [n-1 : 0] A;

	genvar i;
	generate
		for (i=0; i<n; i= i+1) begin: l1
			if(i%2 == 0)
				assign A[i] = ~inA[i];
			else
				assign A[i] = inA[i];
		end
	endgenerate

endmodule
