module shifter(man_c, shamt, shman_c
	);

	// Assigining ports as in/out
	input [23:0] man_c;
	input [7:0] shamt;
	output [71:0] shman_c;

	// Logic
	wire [71:0] man_c_ext = {{24{1'b0}}, man_c, {24{1'b0}}};
	assign shman_c = (shamt[7] == 0) ? (man_c_ext >> shamt) : (man_c_ext << ({8{1'b0}} - shamt));

endmodule