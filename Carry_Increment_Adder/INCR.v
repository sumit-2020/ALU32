`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:08 12/02/2016 
// Design Name: 
// Module Name:    INCR 
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
module INCR(a,cin,sum,cout);

	// a,cin are the two inputs
	input [3:0] a; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [3:0] sum;
	output cout;
	
	// incrementing 'a' if cin==1
	assign sum[0]=(~a[0])*cin+a[0]*(~cin);
	assign sum[1]=(a[0]^a[1])*cin+a[1]*(~cin);
	assign sum[2]=((a[0]*a[1])^a[2])*cin+a[2]*(~cin);
	assign sum[3]=((a[0]*a[1]*a[2])^a[3])*cin+a[3]*(~cin);
	assign cout=a[0]*a[1]*a[2]*a[3]*cin;


endmodule