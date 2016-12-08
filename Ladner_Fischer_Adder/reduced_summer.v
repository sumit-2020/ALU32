module reduced_summer(inA, inB, c, sum
	);

	parameter bits = 32;

	// Assigning ports as in/out
	input [(bits-1):0] inA, inB, c;
	output [(bits-1):0] sum;

	// Logic
	assign sum = inA^inB^c;

endmodule
