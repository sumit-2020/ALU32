module simple_combinational_mult(product,multiplier,multiplicand);
 
input [15:0] multiplier, multiplicand;
output product;

reg [31:0]    product;

integer i;

	 always @( multiplier or multiplicand )
    begin	 
    product = 0;
    for(i=0; i<16; i=i+1)
    if( multiplier[i] == 1'b1 ) product = product + ( multiplicand << i );
	 end
     
endmodule 