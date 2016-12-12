module floating_pt_div_controller(inp, set, unlock, sel0, sel1, init, clock, out, initLED, sel1LED, sel0LED
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
	reg [2:0] ncount;
	reg [31:0] numA;
	reg [31:0] numB;
	initial begin	
		lock = 1'b0;
		ncount = 3'b000;
		numA = {32{1'b0}};
		numB = {32{1'b0}};
	end

	// Magic happens here
	wire [31:0] result;
	wire [7:0] prod3, prod2, prod1, prod0;
	assign prod3 = result[31:24];
	assign prod2 = result[23:16];
	assign prod1 = result[15:8];
	assign prod0 = result[7:0];
	floating_pt_div_754 m1(numA,numB,init,clock,result);
	
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
				3'b000 : numA[7:0] = inp;
				3'b001 : numA[15:8] = inp;
				3'b010 : numA[23:16] = inp;
				3'b011 : numA[31:24] = inp;
				3'b100 : numB[7:0] = inp;
				3'b101 : numB[15:8] = inp;
				3'b110 : numB[23:16] = inp;
				3'b111 : numB[31:24] = inp;
			endcase
			ncount = ncount + 3'b001;
			lock = 1'b1;
		end

		else begin
		if (unlock == 1'b1)
			lock = 1'b0;
		if (init == 1'b1)
			ncount = 3'b000;
		end
	end

endmodule