`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:34 12/02/2016 
// Design Name: 
// Module Name:    RCA4 
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
module RCA4(a,b,cin,sum,cout);

	// a,b,cin are the three inputs
	input [3:0] a,b; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [3:0] sum;
	output cout;
	
	// wires to stores carries of the Full Adders
	wire c1,c2,c3;
	
	// cascading 8 Full Adders
	FA fa1(a[0],b[0],cin,sum[0],c1);
	FA fa2(a[1],b[1],c1,sum[1],c2);
	FA fa3(a[2],b[2],c2,sum[2],c3);
	FA fa4(a[3],b[3],c3,sum[3],cout);
	

endmodule