`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:51:45 12/05/2016 
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
	input [3:0] a,b; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [3:0] sum;
	output cout;
	
	// wires to stores carry and propagates of the  Adders
	wire caux,prop1,prop2,P;
	
	// cascading  Adders
	A a1(a[0],b[0],cin,sum[0],c1,prop1);
	A a2(a[1],b[1],c1,sum[1],c2,prop2);
	A a3(a[2],b[2],c2,sum[2],c3,prop3);
	A a4(a[3],b[3],c3,sum[3],caux,prop4);
	and(P,prop1,prop2,prop3,prop4);
	assign cout = (P) ? cin : caux;

endmodule
