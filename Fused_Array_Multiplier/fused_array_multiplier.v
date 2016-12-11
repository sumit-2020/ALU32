module fused_array_mult(expA, expB, expC, manA, manB, manC, expAns, manAns
	);

	// Assigning ports as in/out
	input [7:0] expA, expB, expC;
	input [23:0] manA, manB, manC;
	
	assign expA = 8'b00000010;
	assign expB = 8'b00000010;
	assign expC = 8'b00000100;
	
	assign manA = {2'b01, {22{1'b0}}};
	assign manB = {2'b01, {22{1'b0}}};
	assign manC = {2'b01, {22{1'b0}}};
	
	output [7:0] expAns;
	output [23:0] manAns;

	
	// Logic Connections (too many of them really)
	wire [47:0] ab_mult;
	multiplier mult1(manA, manB, ab_mult);

	wire [7:0] shamt;
	wire ab_req;
	exp_unit expunit1(expA, expB, expC, shamt, ab_req);

	wire [71:0] shifted_manC;
	shifter shift1(manC, shamt, shifted_manC);

	wire [47:0] adder_out;
	wire adder_carry;
	adder add1(shifted_manC[47:0], ab_mult, {adder_carry, adder_out});

	wire [23:0] shifted_manC_p1_incremented;
	assign shifted_manC_p1_incremented = shifted_manC[71:48] + {{23{1'b0}}, adder_carry};

	wire all_extra_zero;
	assign all_extra_zero = (shifted_manC_p1_incremented == {24{1'b0}}) ? 1'b1 : 1'b0;
	
	wire [23:0] normR_out, normL_out;
	wire [7:0] normR_z, normL_z;
	normalizerR norm1(adder_out, normR_out, normR_z);
	normalizerL norm2({shifted_manC_p1_incremented, adder_out[47:24]}, normL_out, normL_z);

	
	wire [23:0] norm_out = (all_extra_zero == 1'b1) ? normR_out : normL_out;
	wire [7:0] norm_z = (all_extra_zero == 1'b1) ? normR_z : normL_z;	
	
	wire [7:0] exp_out;
	exp_summer expsum1(expA+expB, norm_z, exp_out);
	
	assign expAns = (ab_req == 1'b1) ? exp_out : expC;
	assign manAns = (ab_req == 1'b1) ? norm_out : manC;

endmodule


