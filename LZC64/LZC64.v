module LZC64(inA, Z
	);

	// Assigning ports as in/out
	input [63:0] inA;
	output [7:0] Z;

	// Logic Connections
	wire [7:0] Z_temp;
	
	// Z0
	F64 m1(inA, Z_temp[0]);

	// Z1
	wire [31:0] inA_2or;
	genvar i;
	generate
		for(i = 0; i < 32; i = i+1) begin :l1
			assign inA_2or[i] = inA[2*i] | inA[2*i + 1];
		end
	endgenerate

	F32 m2(inA_2or, Z_temp[1]);

	// Z2
	wire [15:0] inA_4or;
	generate
		for(i = 0; i < 16; i = i+1) begin: l2
			assign inA_4or[i] = inA[4*i] | inA[4*i + 1] | inA[4*i + 2] | inA[4*i + 3];
		end
	endgenerate
	
	F16 m3(inA_4or, Z_temp[2]);

	// Z3
	wire [7:0] inA_8or;
	generate
		for(i = 0; i < 8; i = i+1) begin: l3
			assign inA_8or[i] = inA[8*i] | inA[8*i + 1] | inA[8*i + 2] | inA[8*i+3] | inA[8*i+4] | inA[8*i+5] | inA[8*i+6] | inA[8*i+7];
		end
	endgenerate
	
	F8 m4(inA_8or, Z_temp[3]);

	// Z4
	wire [3:0] inA_16or;
	generate 
		for(i=0; i<4; i=i+1) begin: l4
			assign inA_16or[i] = inA[16*i + 0]| inA[16*i + 1]| inA[16*i + 2]| inA[16*i + 3]| inA[16*i + 4]| inA[16*i + 5]| inA[16*i + 6]| inA[16*i + 7]| inA[16*i + 8]| inA[16*i + 9]| inA[16*i + 10]| inA[16*i + 11]| inA[16*i + 12]| inA[16*i + 13]| inA[16*i + 14]| inA[16*i + 15];
		end
	endgenerate

	F4 m5(inA_16or, Z_temp[4]);

	// Z5
	wire [1:0] inA_32or;
	generate
		for(i=0; i<2; i=i+1) begin: l5
			assign inA_32or[i] = inA[32*i + 0] | inA[32*i + 1] | inA[32*i + 2] | inA[32*i + 3] | inA[32*i + 4] | inA[32*i + 5] | inA[32*i + 6] | inA[32*i + 7] | inA[32*i + 8] | inA[32*i + 9] | inA[32*i + 10] | inA[32*i + 11] | inA[32*i + 12] | inA[32*i + 13] | inA[32*i + 14] | inA[32*i + 15] | inA[32*i + 16] | inA[32*i + 17] | inA[32*i + 18] | inA[32*i + 19] | inA[32*i + 20] | inA[32*i + 21] | inA[32*i + 22] | inA[32*i + 23] | inA[32*i + 24] | inA[32*i + 25] | inA[32*i + 26] | inA[32*i + 27] | inA[32*i + 28] | inA[32*i + 29] | inA[32*i + 30] | inA[32*i + 31];
		end
	endgenerate
	
	F2 m6(inA_32or, Z_temp[5]);

	// Z6, Z7
	assign Z_temp[6] = 1'b0;
	assign Z_temp[7] = 1'b0;


	// Select
	wire V;
	all_zero_detector m7(inA, V);
	assign Z = (V == 1'b1) ? 16'h0000000000000000 : Z_temp;

endmodule
