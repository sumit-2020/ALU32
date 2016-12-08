`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:12 12/08/2016 
// Design Name: 
// Module Name:    Multiplier 
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
module Multiplier(md,mr,product);

	// 32 bit inputs multiplicand (md)and multiplier (mr) 
	input [15:0] md,mr;
	
	// 64 bit output product
	output [31:0] product;
	
	wire [31:0] p0 ;
	assign p0 = {16'b0000000000000000,md[15:0]&{16{mr[0]}}};
	wire [31:0] p1 ;
	assign p1 = {15'b000000000000000,md[15:0]&{16{mr[1]}},1'b0};
	wire [31:0] p2 ;
	assign p2 = {14'b00000000000000,md[15:0]&{16{mr[2]}},2'b00};
	wire [31:0] p3 ;
	assign p3 = {13'b0000000000000,md[15:0]&{16{mr[3]}},3'b000};
	wire [31:0] p4 ;
	assign p4 = {12'b000000000000,md[15:0]&{16{mr[4]}},4'b0000};
	wire [31:0] p5 ;
	assign p5 = {11'b00000000000,md[15:0]&{16{mr[5]}},5'b00000};
	wire [31:0] p6 ;
	assign p6 = {10'b0000000000,md[15:0]&{16{mr[6]}},6'b000000};
	wire [31:0] p7 ;
	assign p7 = {9'b000000000,md[15:0]&{16{mr[7]}},7'b0000000};
	wire [31:0] p8 ;
	assign p8 = {8'b00000000,md[15:0]&{16{mr[8]}},8'b00000000};
	wire [31:0] p9 ;
	assign p9 = {7'b0000000,md[15:0]&{16{mr[9]}},9'b000000000};
	wire [31:0] p10 ;
	assign p10 = {6'b000000,md[15:0]&{16{mr[10]}},10'b0000000000};
	wire [31:0] p11 ;
	assign p11 = {5'b00000,md[15:0]&{16{mr[11]}},11'b00000000000};
	wire [31:0] p12 ;
	assign p12 = {4'b0000,md[15:0]&{16{mr[12]}},12'b000000000000};
	wire [31:0] p13 ;
	assign p13 = {3'b000,md[15:0]&{16{mr[13]}},13'b0000000000000};
	wire [31:0] p14 ;
	assign p14 = {2'b00,md[15:0]&{16{mr[14]}},14'b00000000000000};
	wire [31:0] p15 ;
	assign p15 = {1'b0,md[15:0]&{16{mr[15]}},15'b000000000000000};


	wire [31:0] s0;
	wire [31:0] s1;
	wire [31:0] s2;
	wire [31:0] s3;
	wire [31:0] s4;
	wire [31:0] s5;
	wire [31:0] s6;
	wire [31:0] s7;
	wire [31:0] s8;
	wire [31:0] s9;
	wire [31:0] s10;
	wire [31:0] s11;
	wire [31:0] s12;
	wire [31:0] s13;
	wire [31:0] s14;

	CSkipA cskipa0(32'b00000000000000000000000000000000,p0,s0);
	CSkipA cskipa1(s0, p1, s1);
	CSkipA cskipa2(s1, p2, s2);
	CSkipA cskipa3(s2, p3, s3);
	CSkipA cskipa4(s3, p4, s4);
	CSkipA cskipa5(s4, p5, s5);
	CSkipA cskipa6(s5, p6, s6);
	CSkipA cskipa7(s6, p7, s7);
	CSkipA cskipa8(s7, p8, s8);
	CSkipA cskipa9(s8, p9, s9);
	CSkipA cskipa10(s9, p10, s10);
	CSkipA cskipa11(s10, p11, s11);
	CSkipA cskipa12(s11, p12, s12);
	CSkipA cskipa13(s12, p13, s13);
	CSkipA cskipa14(s13, p14, s14);
	CSkipA cskipa15(s14, p15, product);

endmodule
