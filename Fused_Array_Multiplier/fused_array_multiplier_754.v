module fused_array_multiplier_754(inA, inB, inC, out
	);


	/// Assigning ports as in/out
	input [31:0] inA, inB, inC;
	output [31:0] out;
	
	wire [7:0] expOut;
	wire [23:0] manOut;
	wire [7:0] expA, expB, expC;
	wire [23:0] manA, manB, manC;
	
	assign expA = inA[30:23] + 8'b00000001;
	assign expB = inB[30:23] + 8'b00000001;
	assign expC = inC[30:23] + 8'b00000001;
	assign manA = {1'b1, inA[22:0]};
	assign manB = {1'b1, inB[22:0]};
	assign manC = {1'b1, inC[22:0]};
	// Connections
	fused_array_mult m1(expA, expB, expC, manA, manB, manC, expOut, manOut);
	assign out = {1'b0, expOut-8'b00000001, manOut[22:0]};

endmodule