`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:23 12/02/2016 
// Design Name: 
// Module Name:    CIA 
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
module CIA(a,b,cin,sum,cout);

	// a,b,cin are the three inputs
	input [31:0] a,b; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [31:0] sum;
	output cout;
	
	// wires to stores sum of RCA and carries of the Ripple Carry Adders
	wire [3:0] s1,s2,s3,s4,s5,s6,s7,s8;
	wire c1,c2;
	
	// calculating the two four-bit sums using RCA4
	RCA4 rca41(a[3:0],b[3:0],cin,s1[3:0],c1);
	RCA4 rca42(a[7:4],b[7:4],1'b0,s2[3:0],c2);
	RCA4 rca43(a[11:8],b[11:8],1'b0,s3[3:0],c3);
	RCA4 rca44(a[15:12],b[15:12],1'b0,s4[3:0],c4);
	RCA4 rca45(a[19:16],b[19:16],1'b0,s5[3:0],c5);
	RCA4 rca46(a[23:20],b[23:20],1'b0,s6[3:0],c6);
	RCA4 rca47(a[27:24],b[27:24],1'b0,s7[3:0],c7);
	RCA4 rca48(a[31:28],b[31:28],1'b0,s8[3:0],c8);

	
	// Using INCR to increment s2[3:0] by 1 if c1 is 1 
	// wire caux is used to store the incrementation generated carry
	wire caux1,caux3,caux5,caux7;
	wire [7:0] ss1,ss2,ss3,ss4;
	assign ss1 [3:0]=s1;
	assign ss2 [3:0]=s3;
	assign ss3 [3:0]=s5;
	assign ss4 [3:0]=s7;
	
	INCR incr1(s2[3:0],c1,ss1[7:4],caux1);
	INCR incr2(s4[3:0],c3,ss2[7:4],caux3);
	INCR incr3(s6[3:0],c5,ss3[7:4],caux5);
	INCR incr4(s8[3:0],c7,ss4[7:4],caux7);
	// logically, cout is the xor of carries of rca42 and incr i.e, c2 and caux
	assign cc1=c2^caux1;
	assign cc2=c4^caux3;
	assign cc3=c6^caux5;
	assign cc4=c8^caux7;
	
	wire [15:0] sss1,sss2;
	assign sss1[7:0]= ss1;
	assign sss2[7:0]= ss3;
	
	INCR2 incr5(ss2,cc1,sss1[15:8],cauxi1);
	INCR2 incr6(ss4,cc3,sss2[15:8],cauxi5);
	
	assign ccc1=cc2^cauxi1;
	assign ccc2=cc4^cauxi5;
	
	assign sum[15:0]=sss1;
	INCR3 incr7(sss2,cauxi1,sum[31:16],CAUX);
	assign cout=cauxi5^CAUX;
	
	
	
endmodule