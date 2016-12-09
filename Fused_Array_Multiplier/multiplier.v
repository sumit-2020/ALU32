`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:10:32 12/09/2016 
// Design Name: 
// Module Name:    Multiplier 
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
module multiplier(man_a,man_b,product);

	//inputs man_a and man_b for the two input mantissa's
	input [23:0] man_a, man_b;
	
	//output product of both mantissa's
	output [47:0] product;
	
	assign product=man_a*man_b;

endmodule
