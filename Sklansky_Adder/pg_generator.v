module pg_generator(inA, inB, g, p
	);
	
	parameter bits = 32;
	// Assiging ports as in/out
	input [(bits-1):0] inA, inB;
	output [(bits-1):0] g, p;

	assign g = inA&inB;
	assign p = inA^inB;

endmodule
