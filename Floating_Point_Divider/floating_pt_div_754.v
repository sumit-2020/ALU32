module floating_pt_div_754(inA, inB, init, clock,  out
	);

	// Assigning ports as in/out
	input [31:0] inA, inB;
	input init, clock;
	output [31:0] out;

	// Logic connections
	floating_point_div m1(inA[30:23], inB[30:23], inA[22:0], inB[22:0], init, clock, out[30:23], out[22:0]);
	assign out[31] = inA[31]^inB[31];

endmodule
