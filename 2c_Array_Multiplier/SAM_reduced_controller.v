module SAM_reduced_controller(inp, set, unlock, init, clock, out
	);

	// Assign pins as in/out
	input [7:0] in;
	input set, unlock, init, clock;
	output [7:0] out;

	signed_array_multiplier #(8) m1(inA[1:4],inB[3:0],init,clock,out);

endmodule
