module fixed_divider(inDividend, inDivisor, init, clock, Quotient, Remainder
	);

	// Assigning ports as in/out
	input [31:0] inDividend;
	input [15:0] inDivisor;
	input init, clock;
	output [31:0] Quotient;
	output [15:0] Remainder;

	// Initialising required registers
	reg [47:0] Dividend;
	reg [31:0] Q;
	reg [5:0] count;
	initial begin
		Dividend 	= {48{1'b0}};
		Q 				= {32{1'b0}};
		count 		= 6'b000000;
	end

	// Initialising required wires
	wire [16:0] diff = Dividend[47:31] - {1'b0, inDivisor};
	wire Q_n	= ~diff[16];
	wire [16:0] Dividend_n1 = (diff[16]) ? Dividend[47:31] : diff;
	wire [47:0] Dividend_n2 = {Dividend_n1, Dividend[30:0]};
	wire [47:0] Dividend_n = Dividend_n2 << 1'b1;
	
	// Assigning outputs
	assign Quotient = Q;
	assign Remainder = Dividend[47:32];
	
	// Main sequential logic
	always @(posedge clock)
	begin
		if (init == 1)
		begin
			Dividend = {{16{1'b0}}, inDividend};
			Q = {32{1'b0}};
			count = 6'b000000;
		end

		else
		begin
			if (count != 6'b100000)
			begin
				Q = {Q[30:0], Q_n};
				Dividend = Dividend_n;	
				count = count + 6'b000001;
			end
		end
	end

endmodule
