module adder_controller(inp, cin, set, unlock, select, out, cout, setled, unlockled, select0led, select1led, clk);

	// Assigining ports as in/out
	input [7:0] inp;
	input cin, set, unlock, clk;
	input [1:0] select;
	output [7:0] out;
	output cout,setled,unlockled,select0led,select1led;

	// Logic connections
	
	// For the locking mechanism, to handle bounce of the buttons
	reg lock;
	initial lock = 1'b0;
	
	assign setled=set;
	assign unlockled=unlock;
	assign select0led=select[0];
	assign select1led=select[1];
	
	// Registers required
	reg [31:0] numA, numB;
	wire [31:0] sum;
	reg [2:0] counter;

	initial
	begin
		numA = 0;
		numB = 0;
		counter = 3'b000;
	end
	
	// Connecting the adder
	CIA cia(numA, numB, cin, sum, cout);
	
	// Getting output
	assign out = (select == 2'b00) ? sum[7:0] : 
			((select == 2'b01) ? sum[15:8] : 
				((select == 2'b10) ? sum[23:16] : sum[31:24]));
	
	// To fill in the registers on pressing setA and setB
	always @(posedge clk)
	begin 
		if (set == 1 && lock == 0)
		begin
			case (counter)
				3'b000 : numA[7:0] = inp;
				3'b001 : numA[15:8] = inp;
				3'b010 : numA[23:16] = inp;
				3'b011 : numA[31:24] = inp;
				3'b100 : numB[7:0] = inp;
				3'b101 : numB[15:8] = inp;
				3'b110 : numB[23:16] = inp;
				3'b111 : numB[31:24] = inp;
			endcase

			counter = counter + 3'b001;
			lock = 1'b1;
		end

		else if (unlock == 1)
		begin
			lock = 1'b0;
		end
	end

endmodule
