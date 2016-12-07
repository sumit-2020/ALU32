`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:07 12/05/2016 
// Design Name: 
// Module Name:    CSkipA 
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
module CSkipA(a,b,cin,sum,cout);

	// a,b,cin are the three inputs
	input [31:0] a,b; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [31:0] sum;
	output cout;
	
	wire c1,c2,c3;
	
	Block b1(a[3:0],b[3:0],cin,sum[3:0],c1);
	Block b2(a[7:4],b[7:4],c1,sum[7:4],c2);
	Block b3(a[11:8],b[11:8],c2,sum[11:8],c3);
	Block b4(a[15:12],b[15:12],c3,sum[15:12],c4);
	Block b5(a[19:16],b[19:16],c4,sum[19:16],c5);
	Block b6(a[23:20],b[23:20],c5,sum[23:20],c6);
	Block b7(a[27:24],b[27:24],c6,sum[27:24],c7);
	Block b8(a[31:28],b[31:28],c7,sum[31:28],cout);
	


endmodule
