module normalizer(in, out, shamt
	);

	// Assigning ports as in/out
	inout [48:0] in;
	output [48:0] out;
	output [8:0] shamt;

	// Logic connections
	wire [48:0] w0, w1, w2, w3, w4;
	genvar i;
	generate
	for (i = 0; i<49; i = i + 1) begin : name
		buf #5 (w1[i], w0[i]);
		buf #5 (w2[i], w1[i]);
		buf #5 (w3[i], w2[i]);
		buf #5 (w4[i], w3[i]);
		buf #5 (in[i], w4[i]);
	end
	endgenerate

	assign out = in;
	left_shift_1 lsl(in, ~w0[48], w0);

endmodule
