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

	// Initialising required wires
	wire [16:0] diff = Dividend[47:31] - {1'b0, inDivisor};
	wire Q_n	= ~diff[16];
	wire [16:0] Dividend_n = (diff[16]) ? Dividend[47:31] : diff;
	
	// Assigning outputs
	assign Quotient = Q;
	assign Remainder = Dividend[47:32];
	
	// Main sequential logic
	always @(posedge clock)
	begin
		if (init == 1)
		begin
			Dividend = {16'b0000000000000000, inDividend};
			Q = 32'b0000000000000000000000;
			count = 6'b000000;
		end

		else if (init == 0)
		begin
			if (clock == 1 & count < 6'b100000)
			begin
				Q = {Q[30:0], Q_n};
				Dividend [47:31] = Dividend_n;	
//			end
//			else if (clock == 0 && count < 3'b100)
//			begin
				Dividend = {Dividend[46:0], 1'b0};
				count = count + 6'b000001;
			end
		end
	end

endmodule