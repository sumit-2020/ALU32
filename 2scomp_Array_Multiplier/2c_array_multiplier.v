module c2_array_multiplier(inA, inB, product
	);
	
	parameter bits = 32;
	parameter length = 16;
	
	// Assiging ports as in/out
	input [15:0] inA, inB;
	output [bits-1:0] product;
	
	// Generating Partial Products
	wire [15:0] p[0:15];
	assign p[0] = {16{inA[0]}} & inB;
	assign p[1] = {16{inA[1]}} & inB;
	assign p[2] = {16{inA[2]}} & inB;
	assign p[3] = {16{inA[3]}} & inB;
	assign p[4] = {16{inA[4]}} & inB;
	assign p[5] = {16{inA[5]}} & inB;
	assign p[6] = {16{inA[6]}} & inB;
	assign p[7] = {16{inA[7]}} & inB;
	assign p[8] = {16{inA[8]}} & inB;
	assign p[9] = {16{inA[9]}} & inB;
	assign p[10] = {16{inA[10]}} & inB;
	assign p[11] = {16{inA[11]}} & inB;
	assign p[12] = {16{inA[12]}} & inB;
	assign p[13] = {16{inA[13]}} & inB;
	assign p[14] = {16{inA[14]}} & inB;
	assign p[15] = {16{inA[15]}} & inB;
	
	wire [31:0] inArray[0:15];
	assign inArray[0] = {{15{1'b0}} ,1'b1, ~p[0][15], p[0][14:0]};
	assign inArray[1] = {{15{1'b0}}, ~p[1][15], p[1][14:0], {1{1'b0}}};
	assign inArray[2] = {{14{1'b0}}, ~p[2][15], p[2][14:0], {2{1'b0}}};	
	assign inArray[3] = {{13{1'b0}}, ~p[3][15], p[3][14:0], {3{1'b0}}};
	assign inArray[4] = {{12{1'b0}}, ~p[4][15], p[4][14:0], {4{1'b0}}};
	assign inArray[5] = {{11{1'b0}}, ~p[5][15], p[5][14:0], {5{1'b0}}};
	assign inArray[6] = {{10{1'b0}}, ~p[6][15], p[6][14:0], {6{1'b0}}};
	assign inArray[7] = {{9{1'b0}}, ~p[7][15], p[7][14:0], {7{1'b0}}};
	assign inArray[8] = {{8{1'b0}}, ~p[8][15], p[8][14:0], {8{1'b0}}};
	assign inArray[9] = {{7{1'b0}}, ~p[9][15], p[9][14:0], {9{1'b0}}};
	assign inArray[10] = {{6{1'b0}}, ~p[10][15], p[10][14:0], {10{1'b0}}};
	assign inArray[11] = {{5{1'b0}}, ~p[11][15], p[11][14:0], {11{1'b0}}};
	assign inArray[12] = {{4{1'b0}}, ~p[12][15], p[12][14:0], {12{1'b0}}};
	assign inArray[13] = {{3{1'b0}}, ~p[13][15], p[13][14:0], {13{1'b0}}};
	assign inArray[14] = {{2{1'b0}}, ~p[14][15], p[14][14:0], {14{1'b0}}};
	assign inArray[15] = {{1{1'b1}}, p[15][15], ~p[15][14:0], {15{1'b0}}};


/*	// Declaring necessary registers
	reg [bits-1:0] sum;
	integer count;

	// Initialising registers
	initial
	begin	
		sum = {bits{1'b0}};
		count = 0;
	end

	// Logic block connections
	wire [bits-1:0] sum_prev, A;
	assign A = inArray[count];
	assign out = sum;
	carry_ripple_adder a1(A, sum, 1'b0, sum_prev);

	// Sequential block
	always @(*)
	begin
		if (compute == 1 && clock == 1)
		begin
			if (count < length)
			begin
				if (count == 0) sum = 0;
				sum = sum_prev;
				if (count < length-1) count = count + 1;
			end
		end

		if (compute == 0)
		begin
			count = 0;
		end
	end
*/

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

	CSkipA cskipa0(32'b00000000000000000000000000000000,inArray[0],s0);
	CSkipA cskipa1(s0, inArray[1], s1);
	CSkipA cskipa2(s1, inArray[2], s2);
	CSkipA cskipa3(s2, inArray[3], s3);
	CSkipA cskipa4(s3, inArray[4], s4);
	CSkipA cskipa5(s4, inArray[5], s5);
	CSkipA cskipa6(s5, inArray[6], s6);
	CSkipA cskipa7(s6, inArray[7], s7);
	CSkipA cskipa8(s7, inArray[8], s8);
	CSkipA cskipa9(s8, inArray[9], s9);
	CSkipA cskipa10(s9, inArray[10], s10);
	CSkipA cskipa11(s10, inArray[11], s11);
	CSkipA cskipa12(s11, inArray[12], s12);
	CSkipA cskipa13(s12, inArray[13], s13);
	CSkipA cskipa14(s13, inArray[14], s14);
	CSkipA cskipa15(s14, inArray[15], product);



endmodule
