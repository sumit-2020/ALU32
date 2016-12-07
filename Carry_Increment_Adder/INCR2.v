`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:24 12/07/2016 
// Design Name: 
// Module Name:    INCR2 
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
module INCR2(a,cin,sum,cout);

	// a,cin are the two inputs
	input [7:0] a; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [7:0] sum;
	output cout;
	
	// incrementing 'a' if cin==1
	assign sum[0]=(~a[0])*cin+a[0]*(~cin);
	assign sum[1]=(a[0]^a[1])*cin+a[1]*(~cin);
	assign sum[2]=((a[0]*a[1])^a[2])*cin+a[2]*(~cin);
	assign sum[3]=((a[0]*a[1]*a[2])^a[3])*cin+a[3]*(~cin);
	assign sum[4]=((a[0]*a[1]*a[2]*a[3])^a[4])*cin+a[4]*(~cin);
	assign sum[5]=((a[0]*a[1]*a[2]*a[3]*a[4])^a[5])*cin+a[5]*(~cin);
	assign sum[6]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5])^a[6])*cin+a[6]*(~cin);
	assign sum[7]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6])^a[7])*cin+a[7]*(~cin);
	assign cout=a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*cin;


endmodule
