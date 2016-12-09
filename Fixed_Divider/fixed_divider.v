module fixed_divider(inDividend, inDivisor, init, clock, Quotient, Remainder
	);

	// Assigning ports as in/out
	input [7:0] inDividend;
	input [3:0] inDivisor;
	input init, clock;
	output [7:0] Quotient;
	output [3:0] Remainder;

	// Initialising required registers
	reg [11:0] Dividend;
	reg [7:0] Q;
	reg [3:0] count;

	// Initialising required wires
	wire [4:0] diff = Dividend[11:7] - {1'b0, inDivisor};
	wire Q_n	= ~diff[4];
	wire [4:0] Dividend_n = (diff[4]) ? Dividend[11:7] : diff;
	
	// Assigning outputs
	assign Quotient = Q;
	assign Remainder = Dividend[11:8];
	
	// Main sequential logic
	always @(posedge clock)
	begin
		if (init == 1)
		begin
			Dividend = {4'b0000, inDividend};
			Q = 8'b00000000;
			count = 4'b0000;
		end

		else if (init == 0)
		begin
			if (clock == 1 & count < 4'b1000)
			begin
				Q = {Q[6:0], Q_n};
				Dividend [11:7] = Dividend_n;	
//			end
//			else if (clock == 0 && count < 3'b100)
//			begin
				Dividend = {Dividend[10:0], 1'b0};
				count = count + 4'b0001;
			end
		end
	end

endmodule