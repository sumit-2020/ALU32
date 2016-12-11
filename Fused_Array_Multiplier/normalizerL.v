module normalizerL(inA, out, Z
	);

	// Assigning ports as in/out
	input [47:0] inA;
	output [23:0] out;
	output [7:0] Z;

	// Logic connections
	wire [7:0] left_z;
	LZC64 m1({inA, {16{1'b0}}}, left_z);

	wire [7:0] shift_r = 8'b00011000 - left_z;
	wire [47:0] out_full = inA >> shift_r;
	assign out = out_full[23:0];
	
	assign Z = {8{1'b0}} - shift_r;

endmodule
