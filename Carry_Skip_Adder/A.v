`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:58:18 12/02/2016 
// Design Name: 
// Module Name:    A 
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

// Module for Full Adder(A) 
module A(a,b,cin,sum,cout,prop);

	// a,b,cin are the three inputs
	input a,b,cin; 
	
	// sum,cout	are the two outputs				
	output sum,cout,prop;
	
	// assigning values to sum and cout by appropriate logic
	xor(prop,a,b);
	xor(sum,prop,cin);
	assign cout = a*b+b*cin+cin*a;
	
endmodule