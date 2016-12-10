module left_shift_1(in, enable, out
	);

	// Assigining ports as in/out
	input [48:0] in;
	input enable;
	output [48:0] out;

	// Logic
	assign out = (enable == 1) ? (in << 1) : in;

endmodule
