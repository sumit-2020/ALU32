module carry_lookahead_adder(inA, inB, cin, sum, cout
	);

	// Assign ports as in/out
	input [31:0] inA, inB;
	input cin;
	output [31:0] sum;
	output cout;

	// Module connections
	wire [31:0] g, p, c;

	pg_generator #(32)			m1(inA, inB, g, p);
	carry_lookahead_generator	m2(g, p, cin, c, cout);
	reduced_summer	#(32)			m3(inA, inB, c, sum);

endmodule
