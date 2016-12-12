module FAM_controller(inp, set, unlock, sel0, sel1, init, clock, out, initLED, sel1LED, sel0LED
	);
	
	// Assign pins as in/out
	input [7:0] inp;
	input set, unlock, init, clock;
	input sel0, sel1;
	output [7:0] out;
	
	// Indicator outputs;
	output initLED;
	output sel0LED;
	output sel1LED;
	
	assign initLED = init;
	assign sel0LED = sel0;
	assign sel1LED = sel1;
	
	// Registers, hahaha
	reg lock;
	reg [3:0] ncount;
	reg [31:0] numA, numB, numC;
	initial begin
		lock = 1'b0;
		ncount = 1'h0;
		numA = 0;
		numB = 0;
		numC = 0;
	end
	
	// Magic happens here
	wire [15:0] remainder;
	wire [31:0] result;
	wire [7:0] prod3, prod2, prod1, prod0;
	assign prod3 = result[31:24];
	assign prod2 = result[23:16];
	assign prod1 = result[15:8];
	assign prod0 = result[7:0];
	fused_array_multiplier_754 m1(numA,numB, numC, result, remainder);
	
	// You see what you select
	wire [7:0] ifsel1 = (sel0) ? prod3 : prod2;
	wire [7:0] ifsel0 = (sel0) ? prod1 : prod0;
	assign out = (sel1) ? ifsel1 : ifsel0;
	
	// The clockwork
	always @(posedge clock)
	begin 
		if (set == 1'b1 & lock == 1'b0) 
		begin 
			case (ncount)
				4'b0000 : numA[7:0] = inp;
				4'b0001 : numA[15:8] = inp;
				4'b0010 : numA[23:16] = inp;
				4'b0011 : numA[31:24] = inp;
				4'b0100 : numB[7:0] = inp;
				4'b0101 : numB[15:8] = inp;
				4'b0110 : numB[23:16] = inp;
				4'b0111 : numB[31:24] = inp;
				4'b1000 : numC[7:0] = inp;
				4'b1001 : numC[15:8] = inp;
				4'b1010 : numC[23:16] = inp;
				4'b1011 : numC[31:24] = inp;
			endcase
			ncount = ncount + 4'b0001;
			lock = 1'b1;
		end
		
		else begin
		if (unlock == 1'b1)
			lock = 1'b0;
		if (init == 1'b1)
			ncount = 4'b0000;
		end
	end

endmodule

