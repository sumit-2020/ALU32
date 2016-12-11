module normalizerR(inA, out, Z
	);

	// Assigning ports as in/out
	input [47:0] inA;
	output [23:0] out;
	output [7:0] Z;

	// Logic connections
	wire [63:0] ext_inA = {inA, {16{1'b0}}};
	LZC64 m1(ext_inA, Z);
	wire [47:0] out_full = (inA << Z);
	assign out = out_full[47:24];

endmodule
