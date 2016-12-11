module floating_point_div(expA, expB, F1, F2, init, clock, expAns, FAns
	);

	// Assigning ports as in/out
	// 2 IEEE-754 formated numbers are given, but in broken form
	input [7:0] expA, expB;
	input [22:0] F1, F2;
	input init, clock;
	// Output is also an IEEE754 broken format one
	output [7:0] expAns;
	output [22:0] FAns;

	/// Logic
	// adding 1 to the beginning of F1, F2
	// Because numerator = 1.1F and den = 1.F2
	wire [23:0]A = {1'b1, F1};
	wire [23:0]B = {1'b1, F2};

	// registers
	// counter (counts till 24), Quotient, Numerator, Denominator
	reg [4:0] count;
	reg [23:0] Q, D;
	reg [24:0] N;
	// initialisation of registers
	initial begin
		count = {5{1'b1}};
		Q = {24{1'b0}};
		N = {25{1'b0}};
		D = {24{1'b0}};
	end

	// Next inputs of N and Q
	wire [24:0] N_n = N-D;
	wire Q_n = ~N_n[24];

	// State machine that calculates Q
	always @(posedge clock)
	begin
		if (init == 1) begin
			N = {1'b0, A};
			D = B;
			Q = {24{1'b0}};
			count = {5{1'b0}};
		end

		else if(clock == 1 & count != 6'b011000) begin
			Q = {Q[22:0], Q_n};
			if (Q_n == 1'b1) N = N_n[23:0];
			N = {N[23:0], 1'b0};
			count = count + 6'b000001;
		end
	end

	// Calculating possible exponent
	wire [7:0] expAns1;
	wire zero;
	wire infinity;
	exp_summer m1(expA, expB, expAns1,infinity, zero);
	
	// Overflow due to last shift
	wire [7:0] expAns2 = expAns1 - 8'b00000001;
	wire zero2 = (~expAns1[7])&(expAns2[7]);
	
	// Assigning outputs
	assign FAns = (zero & infinity) ? {23{1'b0}} :
			((Q[23]) ? Q[22:0] : 
				((zero2) ? {23{1'b0}}:
				{Q[21:0], 1'b0}));
	
	assign expAns = (infinity) ? {1'b0, {7{1'b1}}} : ((zero) ? {1'b1, {7{1'b0}}} : 
				((Q[23]) ? expAns1 : 
					((zero2) ? {8{1'b1}} : expAns2)));
	
endmodule
