module ladner_fischer_adder(inA, inB, cin, sum, cout
	);

	// Assign ports as in/out
	input [31:0] inA, inB;
	input cin;
	output [31:0] sum;
	output cout;

	// Module connections
	wire [31:0] g, p, c;

	pg_generator #(32)			m1(inA, inB, g, p);
	ladner_fischer_generator		m2({g[30:0], cin}, {p[30:0], 1'b1}, c);
	reduced_summer	#(32)			m3(inA, inB, c, sum);
	assign cout = g[31] | (p[31] & c[31]);

endmodule
