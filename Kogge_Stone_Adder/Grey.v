`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:27 12/07/2016 
// Design Name: 
// Module Name:    Grey 
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
module Grey(gik,pik,gk_1j,gij);

	input gik,pik,gk_1j;
	output gij;
	wire w;
	
	and(w,pik,gk_1j);
	or(gij,gik,w);


endmodule 