module partial_product_calc(A, B, partial_prod
	);

	// Defining bit-length parameter
	parameter n = 16;

	// Assigning ports as in/out
	input A;
	input [n-1:0] B;
	output [n-1:0] partial_prod;

	assign partial_prod = {n{A}} & B;

endmodule
