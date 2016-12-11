`define LOG2(N) ( \
     N <  2 ? 1 : \
     N <  4 ? 2 : \
     N <  8 ? 3 : \
     N < 16 ? 4 : \
     N < 32 ? 5 : \
     N < 64 ? 6 : \
               7 )

module Signed_Array_Multiplier(inA, inB, init, clock, out
	);
	// Aka 2's complement Multiplier

	// Declaring bi-width parameter
	parameter n = 32;

	// Assigning ports as in/out
	input [(n/2)-1:0] inA, inB;
	input init, clock;
	output [n-1:0] out;

	// Initializing necessary registers
	reg [(n/2)-1:0] A, B;
	reg [`LOG2(n)-2:0] count;
	reg [n-1:0] product;

	initial begin
		A = {(n/2){1'b0}};
		B = {(n/2){1'b0}};
		count = {(`LOG2(n)-1){1'b1}};
		product = {n{1'b0}};
	end

	// Combinational part
	// pp denotes partial product
	wire [(n/2)-1:0] pp;
	wire [n/2:0] processed_pp;
	partial_product_calc #(n/2)	m1(A[0], B, pp);
	partial_product_proc #(n/2)	m2(pp, count, processed_pp);

	wire [n-1:0] product_n1, product_n;
	assign product_n1[n-1:(n/2)-1] = product[n-1:(n/2)-1] + processed_pp;
	assign product_n1[(n/2)-2:0] = product[(n/2)-2:0];
	assign product_n = product_n1>>1'b1;
	
	assign out = product_n1;
	
	// Sequential part
	always @(posedge clock)
	begin
		// initializer block
		if (init == 1'b1) begin
			A = inA;
			B = inB;
			product = {n{1'b0}};
			count = {(`LOG2(n)-1){1'b0}};
		end
		else if(clock == 1'b1 & count != n/2-1 & count != {(`LOG2(n)-1){1'b1}}) begin
			product = product_n;
			A = A>>1'b1;
			count = count + {{`LOG2(n/4){1'b0}}, 1'b1};
		end
	end

endmodule
