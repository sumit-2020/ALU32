`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:58 12/07/2016 
// Design Name: 
// Module Name:    INCR3 
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
module INCR3(a,cin,sum,cout);

	// a,cin are the two inputs
	input [15:0] a; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [15:0] sum;
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
	assign sum[8]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7])^a[8])*cin+a[8]*(~cin);
	assign sum[9]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8])^a[9])*cin+a[9]*(~cin);
	assign sum[10]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9])^a[10])*cin+a[10]*(~cin);
	assign sum[11]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9]*a[10])^a[11])*cin+a[11]*(~cin);
	assign sum[12]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9]*a[10]*a[11])^a[12])*cin+a[12]*(~cin);
	assign sum[13]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9]*a[10]*a[11]*a[12])^a[13])*cin+a[13]*(~cin);
	assign sum[14]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9]*a[10]*a[11]*a[12]*a[13])^a[14])*cin+a[14]*(~cin);
	assign sum[15]=((a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9]*a[10]*a[11]*a[12]*a[13]*a[14])^a[15])*cin+a[15]*(~cin);
	
	assign cout=a[0]*a[1]*a[2]*a[3]*a[4]*a[5]*a[6]*a[7]*a[8]*a[9]*a[10]*a[11]*a[12]*a[13]*a[14]*a[15]*cin;

endmodule
