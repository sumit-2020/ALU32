`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:54 12/09/2016 
// Design Name: 
// Module Name:    expsummer 
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
module exp_summer(a,b,sum,overflowI, overflowZ);

	input [7:0] a,b;
	output [7:0] sum;
	output overflowI, overflowZ;
	
	assign sum=a-b;
	assign overflowI = (a[7]&(~b[7])&(~sum[7]));
	assign overflowZ = ((~a[7])&(b[7])&sum[7]);


endmodule
