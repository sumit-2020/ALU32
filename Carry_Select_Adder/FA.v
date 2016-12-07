`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:33 12/05/2016 
// Design Name: 
// Module Name:    FA 
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
module FA(a,b,cin,sum,cout);

	// a,b,cin are the three inputs
	input a,b,cin; 
	
	// sum,cout	are the two outputs				
	output sum,cout;
	
	// assigning values to sum and cout by appropriate logic
	assign sum = a+b+cin;
	assign cout = a*b+b*cin+cin*a;
	
endmodule