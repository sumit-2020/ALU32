
module multiplier_controller(inp, set, unlock, select, out, setled, unlockled, select0led, select1led, clk);

	// Assigining ports as in/out
	input [7:0] inp;
	input  set, unlock, clk;
	input [1:0] select;
	output [7:0] out;
	output setled,unlockled,select0led,select1led;

	// Logic connections
	
	// For the locking mechanism, to handle bounce of the buttons
	reg lock;
	initial lock = 1'b0;
	
	assign setled=set;
	assign unlockled=unlock;
	assign select0led=select[0];
	assign select1led=select[1];
	
	// Registers required
	reg [15:0] numA, numB;
	wire [31:0] product;
	reg [1:0] counter;

	initial
	begin
		numA = 0;
		numB = 0;
		counter = 2'b00;
	end
	
	// Connecting the adder
	simple_combinational_mult Simple_combinational_mult(product, numA, numB);
	
	// Getting output
	assign out = (select == 2'b00) ? product[7:0] : 
			((select == 2'b01) ? product[15:8] : 
				((select == 2'b10) ? product[23:16] : product[31:24]));
	
	// To fill in the registers on pressing setA and setB
	always @(posedge clk)
	begin 
		if (set == 1 && lock == 0)
		begin
			case (counter)
				2'b00 : numA[7:0] = inp;
				2'b01 : numA[15:8] = inp;
				2'b10 : numB[7:0] = inp;
				2'b11 : numB[15:8] = inp;
			endcase

			counter = counter + 2'b01;
			lock = 1'b1;
		end

		else if (unlock == 1)
		begin
			lock = 1'b0;
		end
	end

endmodule
