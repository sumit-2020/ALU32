`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:42 12/07/2016 
// Design Name: 
// Module Name:    Black 
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
module Black(gik,pik,gk_1j,pk_1j,gij,pij);

	input gik,pik,gk_1j,pk_1j;
	output gij,pij;
	wire w;
	
	and(w,pik,gk_1j);
	or(gij,gik,w);
	and(pij,pik,pk_1j);


endmodule 