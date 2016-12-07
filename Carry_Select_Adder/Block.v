`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:11 12/05/2016 
// Design Name: 
// Module Name:    Block 
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
module Block(a,b,cin,sum,cout);

// a,b,cin are the three inputs
	input [7:0] a,b; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [7:0] sum;
	output cout;
	
	// wires to stores carries of the Full Adders
	wire c1,c2,c3;
	
	// cascading Full Adders
	FA fa1(a[0],b[0],cin,sum[0],c1);
	FA fa2(a[1],b[1],c1,sum[1],c2);
	FA fa3(a[2],b[2],c2,sum[2],c3);
	FA fa4(a[3],b[3],c3,sum[3],c4);
	FA fa5(a[4],b[4],c4,sum[4],c5);
	FA fa6(a[5],b[5],c5,sum[5],c6);
	FA fa7(a[6],b[6],c6,sum[6],c7);
	FA fa8(a[7],b[7],c7,sum[7],cout);

endmodule
