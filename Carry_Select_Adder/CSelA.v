`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:52 12/05/2016 
// Design Name: 
// Module Name:    CSelA 
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
module CSelA(a,b,cin,sum,cout);

// a,b,cin are the three inputs
	input [31:0] a,b; 
	input cin;
	
	// sum,cout	are the two outputs				
	output [31:0] sum;
	output cout;
	
	// wires to stores carries of the Full Adders
	wire caux,c1,c2;
	wire [7:0] s10,s11,s20,s21,s30,s31;
	
	Block b1(a[7:0],b[7:0],cin,sum[7:0],caux1);
	Block b2(a[15:8],b[15:8],1'b0,s10[7:0],c1);
	Block b3(a[15:8],b[15:8],1'b1,s11[7:0],c2);
	Block b4(a[23:16],b[23:16],1'b0,s20[7:0],c3);
	Block b5(a[23:16],b[23:16],1'b1,s21[7:0],c4);
	Block b6(a[31:24],b[31:24],1'b0,s30[7:0],c5);
	Block b7(a[31:24],b[31:24],1'b1,s31[7:0],c6);
	
	assign sum[15:8] = (caux1) ? s11[7:0] : s10[7:0];
	assign caux2 = (caux1) ? c2 : c1;
	assign sum[23:16] = (caux2) ? s21[7:0] : s20[7:0];
	assign caux3 = (caux2) ? c4 : c3;
	assign sum[31:24] = (caux3) ? s31[7:0] : s30[7:0];
	assign cout = (caux3) ? c6 : c5;
	

endmodule
