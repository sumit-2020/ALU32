module fixed_divider_controller(inp, set, unlock, select, init, clock, out, setled, unlockled, select0led, select1led
	);

	// Assigning ports as in/out
	input [7:0] inp;
	input [1:0] select;
	input set, unlock, init, clock;
	output [7:0] out;
	output setled,unlockled,select0led,select1led;

	// Indicating LEDs
	assign setled=set;
	assign unlockled=unlock;
	assign select0led=select[0];
	assign select1led=select[1];

	// Lock register
	reg lock;
	initial lock = 0;
	
	// Calculation register
	reg [31:0] numA;
	reg [15:0] numB;
	wire [31:0] prod;
	initial begin
		numA = 0;
		numB = {16{1'b0}};
	end

	// Selecting which output to show
	assign out = prod[7:0];
	//              ((select == 2'b01) ? prod[15:8] :
	//               ((select == 2'b10) ? prod[23:16] : prod[31:24]));
	
	// Counting register
	reg [2:0] counter;
	initial counter = 3'b000;

	// Getting output from the fixed divider module
	fixed_divider m1(numA, numB, init, clock, prod);

	// State machine
	always @(posedge clock)
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
                                //3'b110 : numB[23:16] = inp;
                                //3'b111 : numB[31:24] = inp;
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
