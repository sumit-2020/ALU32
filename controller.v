module controller(inp, cin, setA, setB, select, out, cout
	);

	// Assigining ports as in/out
	input [7:0] inp;
	input cin, setA, setB;
	input [1:0] select;
	output [7:0] out;
	output cout;

	// Logic connections

	// Registers required
	reg [31:0] numA, numB;
	wire [31:0] sum;
	reg [1:0] counterA, counterB;

	initial
	begin
		numA = 0;
		numB = 0;
		counterA = 2'b00;
		counterB = 2'b00;
	end
	
	// Connecting the adder
	carry_ripple_adder a1(numA, numB, cin, sum, cout);
	
	// Getting output
	assign out = (select == 2'b00) ? sum[7:0] : 
			((select == 2'b01) ? sum[15:8] : 
				((select == 2'b10) ? sum[23:16] : sum[31:24]));
	
	// To fill in the registers on pressing setA and setB
	always @(*)
	begin
		if (setA == 1)
		begin
			case (counterA)
				2'b00 : numA[7:0] = inp;
				2'b01 : numA[15:8] = inp;
				2'b10 : numA[23:16] = inp;
				2'b11 : numA[31:24] = inp;
			endcase

			counterA = counterA + 2'b01;
		end

		if (setB == 1)
		begin
			case (counterB)
				2'b00 : numB[7:0] = inp;
				2'b01 : numB[15:8] = inp;
				2'b10 : numB[23:16] = inp;
				2'b11 : numB[31:24] = inp;
			endcase

			counterB = counterB + 2'b01;
		end
	end

endmodule
