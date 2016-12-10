`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:51:35 12/10/2016
// Design Name:   adder_controller
// Module Name:   /home/sumit/32bit/CIA/adder_controller_tester.v
// Project Name:  CIA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_controller_tester;

	// Inputs
	reg [7:0] inp;
	reg cin;
	reg setA;
	reg setB;
	reg [1:0] select;

	// Outputs
	wire [7:0] out;
	wire cout,setaled,setbled,select0led,select1led;

	// Instantiate the Unit Under Test (UUT)
	adder_controller uut (
		.inp(inp), 
		.cin(cin), 
		.setA(setA), 
		.setB(setB), 
		.select(select), 
		.out(out), 
		.cout(cout),
		.setaled(setaled),
		.setbled(setbled),
		.select0led(select0led),
		.select1led(select1led)
	);

	initial begin
		// Initialize Inputs
		inp = 0;
		cin = 0;
		setA = 0;
		setB = 0;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#40 inp=8'b00000011;
		#40 setA=1;
		#40 setA=0;
		#40 inp=8'b00000010;
		#40 setA=1;
		#40 setA=0;
		#40 inp=8'b00000111;
		#40 setA=1;
		#40 setA=0;
		#40 inp=8'b11111111;
		#40 setA=1;
		#40 setA=0;
		#40 inp=8'b00000001;
		#40 setB=1;
		#40 setB=0;
		#40 inp=8'b00100011;
		#40 setB=1;
		#40 setB=0;
		#40 inp=8'b11000000;
		#40 setB=1;
		#40 setB=0;
		#40 inp=8'b00010000;
		#40 setB=1;
		#40 setB=0;
		#40 select=2'b01;
		#40 select=2'b10;
		#40 select=2'b11;
		#40;		
		
	end
	
      
endmodule

