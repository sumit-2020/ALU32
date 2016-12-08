`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:25 12/08/2016 
// Design Name: 
// Module Name:    unsignedarraymultiplier 
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
module unsignedarraymultiplier (a, b, out);
output [63:0] out;
	input  [31:0] a;
	input  [31:0] b;

	assign out = a * b;

endmodule