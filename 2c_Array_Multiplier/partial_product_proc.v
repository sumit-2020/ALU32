`define LOG2(N) ( \
     N <  2 ? 1 : \
     N <  4 ? 2 : \
     N <  8 ? 3 : \
     N < 16 ? 4 : \
     N < 32 ? 5 : \
     N < 64 ? 6 : \
               7 )

module partial_product_proc(pp, count, processed_pp
	);

	// Defining paramter for bit-length
	parameter n = 16;

	// Assigning ports as in/out
	input [n-1:0] pp;
	input [`LOG2(n)-1:0] count;
	output [n:0] processed_pp;

	// Logic
	assign processed_pp = (count == 0) ? {1'b1, ~pp[n-1], pp[n-2:0]} :
				((count == n-1) ? {1'b1, pp[n-1], ~pp[n-2:0]} :
					{1'b0, ~pp[n-1], pp[n-2:0]});

endmodule
