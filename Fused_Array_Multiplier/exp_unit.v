`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:07 12/09/2016 
// Design Name: 
// Module Name:    EXP_UNIT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module exp_unit(exp_a,exp_b,exp_c,shamt,ab_req);

	//8 bit inputs exp_a, exp_b and exp_c for the three exponents 
	input [7:0] exp_a, exp_b, exp_c;
	
	//outputs shamt and ab_req for returning shift amount and whether trivial or not
	output [7:0] shamt;
	output ab_req;
	
	assign shamt = exp_a+exp_b-exp_c;
	assign ab_req = (shamt[7] == 1 && shamt[6:0] <= 7'b1101000) ? 0 : 1;
endmodule
