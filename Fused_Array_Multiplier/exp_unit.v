module exp_unit(exp_a,exp_b,exp_c,shamt,ab_req);

	//8 bit inputs exp_a, exp_b and exp_c for the three exponents 
	input [7:0] exp_a, exp_b, exp_c;
	
	//outputs shamt and ab_req for returning shift amount and whether trivial or not
	output [7:0] shamt;
	output ab_req;
	
	assign shamt = exp_a+exp_b-exp_c;
	assign ab_req = (shamt[7] == 1 && shamt[6:0] <= 7'b1101000) ? 1'b0 : 1'b1;
endmodule
