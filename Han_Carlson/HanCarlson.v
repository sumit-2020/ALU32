`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:08:18 12/08/2016 
// Design Name: 
// Module Name:    HanCarlson 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module HanCarlson(a,b,cin,sum,cout);

input [31:0] a,b;
input cin;
output [31:0] sum;
output cout;

	
	wire b1_3_gen, b1_3_prop;
	wire b1_5_gen, b1_5_prop;
	wire b1_7_gen, b1_7_prop;
	wire b1_9_gen, b1_9_prop;
	wire b1_11_gen, b1_11_prop;
	wire b1_13_gen, b1_13_prop;
	wire b1_15_gen, b1_15_prop;
	wire b1_17_gen, b1_17_prop;
	wire b1_19_gen, b1_19_prop;
	wire b1_21_gen, b1_21_prop;
	wire b1_23_gen, b1_23_prop;
	wire b1_25_gen, b1_25_prop;
	wire b1_27_gen, b1_27_prop;
	wire b1_29_gen, b1_29_prop;
	wire b1_31_gen, b1_31_prop;
	wire b2_5_gen, b2_5_prop;
	wire b2_7_gen, b2_7_prop;
	wire b2_9_gen, b2_9_prop;
	wire b2_11_gen, b2_11_prop;
	wire b2_13_gen, b2_13_prop;
	wire b2_15_gen, b2_15_prop;
	wire b2_17_gen, b2_17_prop;
	wire b2_19_gen, b2_19_prop;
	wire b2_21_gen, b2_21_prop;
	wire b2_23_gen, b2_23_prop;
	wire b2_25_gen, b2_25_prop;
	wire b2_27_gen, b2_27_prop;
	wire b2_29_gen, b2_29_prop;
	wire b2_31_gen, b2_31_prop;
	wire b3_9_gen, b3_9_prop;
	wire b3_11_gen, b3_11_prop;
	wire b3_13_gen, b3_13_prop;
	wire b3_15_gen, b3_15_prop;
	wire b3_17_gen, b3_17_prop;
	wire b3_19_gen, b3_19_prop;
	wire b3_21_gen, b3_21_prop;
	wire b3_23_gen, b3_23_prop;
	wire b3_25_gen, b3_25_prop;
	wire b3_27_gen, b3_27_prop;
	wire b3_29_gen, b3_29_prop;
	wire b3_31_gen, b3_31_prop;
	wire b4_17_gen, b4_17_prop;
	wire b4_19_gen, b4_19_prop;
	wire b4_21_gen, b4_21_prop;
	wire b4_23_gen, b4_23_prop;
	wire b4_25_gen, b4_25_prop;
	wire b4_27_gen, b4_27_prop;
	wire b4_29_gen, b4_29_prop;
	wire b4_31_gen, b4_31_prop;

	wire g1_1_gen;
	wire g6_2_gen;
	wire g2_3_gen;
	wire g6_4_gen;
	wire g3_5_gen;
	wire g6_6_gen;
	wire g3_7_gen;
	wire g6_8_gen;
	wire g4_9_gen;
	wire g6_10_gen;
	wire g4_11_gen;
	wire g6_12_gen;
	wire g4_13_gen;
	wire g6_14_gen;
	wire g4_15_gen;
	wire g6_16_gen;
	wire g5_17_gen;
	wire g6_18_gen;
	wire g5_19_gen;
	wire g6_20_gen;
	wire g5_21_gen;
	wire g6_22_gen;
	wire g5_23_gen;
	wire g6_24_gen;
	wire g5_25_gen;
	wire g6_26_gen;
	wire g5_27_gen;
	wire g6_28_gen;
	wire g5_29_gen;
	wire g6_30_gen;
	wire g5_31_gen;
	
	wire [31:0] gen,prop;

	assign gen[0]=cin;
	assign prop[0]=1'b1;
	GP gp1(a[0], b[0] , gen[1], prop[1]);
	GP gp2(a[1], b[1] , gen[2], prop[2]);
	GP gp3(a[2], b[2] , gen[3], prop[3]);
	GP gp4(a[3], b[3] , gen[4], prop[4]);
	GP gp5(a[4], b[4] , gen[5], prop[5]);
	GP gp6(a[5], b[5] , gen[6], prop[6]);
	GP gp7(a[6], b[6] , gen[7], prop[7]);
	GP gp8(a[7], b[7] , gen[8], prop[8]);
	GP gp9(a[8], b[8] , gen[9], prop[9]);
	GP gp10(a[9], b[9] , gen[10], prop[10]);
	GP gp11(a[10], b[10] , gen[11], prop[11]);
	GP gp12(a[11], b[11] , gen[12], prop[12]);
	GP gp13(a[12], b[12] , gen[13], prop[13]);
	GP gp14(a[13], b[13] , gen[14], prop[14]);
	GP gp15(a[14], b[14] , gen[15], prop[15]);
	GP gp16(a[15], b[15] , gen[16], prop[16]);
	GP gp17(a[16], b[16] , gen[17], prop[17]);
	GP gp18(a[17], b[17] , gen[18], prop[18]);
	GP gp19(a[18], b[18] , gen[19], prop[19]);
	GP gp20(a[19], b[19] , gen[20], prop[20]);
	GP gp21(a[20], b[20] , gen[21], prop[21]);
	GP gp22(a[21], b[21] , gen[22], prop[22]);
	GP gp23(a[22], b[22] , gen[23], prop[23]);
	GP gp24(a[23], b[23] , gen[24], prop[24]);
	GP gp25(a[24], b[24] , gen[25], prop[25]);
	GP gp26(a[25], b[25] , gen[26], prop[26]);
	GP gp27(a[26], b[26] , gen[27], prop[27]);
	GP gp28(a[27], b[27] , gen[28], prop[28]);
	GP gp29(a[28], b[28] , gen[29], prop[29]);
	GP gp30(a[29], b[29] , gen[30], prop[30]);
	GP gp31(a[30], b[30] , gen[31], prop[31]);

	
	Black b1_3(gen[3], prop[3] , gen[2], prop[2], b1_3_gen, b1_3_prop);
	Black b1_5(gen[5], prop[5] , gen[4], prop[4], b1_5_gen, b1_5_prop);
	Black b1_7(gen[7], prop[7] , gen[6], prop[6], b1_7_gen, b1_7_prop);
	Black b1_9(gen[9], prop[9] , gen[8], prop[8], b1_9_gen, b1_9_prop);
	Black b1_11(gen[11], prop[11] , gen[10], prop[10], b1_11_gen, b1_11_prop);
	Black b1_13(gen[13], prop[13] , gen[12], prop[12], b1_13_gen, b1_13_prop);
	Black b1_15(gen[15], prop[15] , gen[14], prop[14], b1_15_gen, b1_15_prop);
	Black b1_17(gen[17], prop[17] , gen[16], prop[16], b1_17_gen, b1_17_prop);
	Black b1_19(gen[19], prop[19] , gen[18], prop[18], b1_19_gen, b1_19_prop);
	Black b1_21(gen[21], prop[21] , gen[20], prop[20], b1_21_gen, b1_21_prop);
	Black b1_23(gen[23], prop[23] , gen[22], prop[22], b1_23_gen, b1_23_prop);
	Black b1_25(gen[25], prop[25] , gen[24], prop[24], b1_25_gen, b1_25_prop);
	Black b1_27(gen[27], prop[27] , gen[26], prop[26], b1_27_gen, b1_27_prop);
	Black b1_29(gen[29], prop[29] , gen[28], prop[28], b1_29_gen, b1_29_prop);
	Black b1_31(gen[31], prop[31] , gen[30], prop[30], b1_31_gen, b1_31_prop);

	
	Black b2_5(b1_5_gen, b1_5_prop, b1_3_gen, b1_3_prop, b2_5_gen, b2_5_prop);
	Black b2_7(b1_7_gen, b1_7_prop, b1_5_gen, b1_5_prop, b2_7_gen, b2_7_prop);
	Black b2_9(b1_9_gen, b1_9_prop, b1_7_gen, b1_7_prop, b2_9_gen, b2_9_prop);
	Black b2_11(b1_11_gen, b1_11_prop, b1_9_gen, b1_9_prop, b2_11_gen, b2_11_prop);
	Black b2_13(b1_13_gen, b1_13_prop, b1_11_gen, b1_11_prop, b2_13_gen, b2_13_prop);
	Black b2_15(b1_15_gen, b1_15_prop, b1_13_gen, b1_13_prop, b2_15_gen, b2_15_prop);
	Black b2_17(b1_17_gen, b1_17_prop, b1_15_gen, b1_15_prop, b2_17_gen, b2_17_prop);
	Black b2_19(b1_19_gen, b1_19_prop, b1_17_gen, b1_17_prop, b2_19_gen, b2_19_prop);
	Black b2_21(b1_21_gen, b1_21_prop, b1_19_gen, b1_19_prop, b2_21_gen, b2_21_prop);
	Black b2_23(b1_23_gen, b1_23_prop, b1_21_gen, b1_21_prop, b2_23_gen, b2_23_prop);
	Black b2_25(b1_25_gen, b1_25_prop, b1_23_gen, b1_23_prop, b2_25_gen, b2_25_prop);
	Black b2_27(b1_27_gen, b1_27_prop, b1_25_gen, b1_25_prop, b2_27_gen, b2_27_prop);
	Black b2_29(b1_29_gen, b1_29_prop, b1_27_gen, b1_27_prop, b2_29_gen, b2_29_prop);
	Black b2_31(b1_31_gen, b1_31_prop, b1_29_gen, b1_29_prop, b2_31_gen, b2_31_prop);

	Black b3_9(b2_9_gen, b2_9_prop, b2_5_gen, b2_5_prop, b3_9_gen, b3_9_prop);
	Black b3_11(b2_11_gen, b2_11_prop, b2_7_gen, b2_7_prop, b3_11_gen, b3_11_prop);
	Black b3_13(b2_13_gen, b2_13_prop, b2_9_gen, b2_9_prop, b3_13_gen, b3_13_prop);
	Black b3_15(b2_15_gen, b2_15_prop, b2_11_gen, b2_11_prop, b3_15_gen, b3_15_prop);
	Black b3_17(b2_17_gen, b2_17_prop, b2_13_gen, b2_13_prop, b3_17_gen, b3_17_prop);
	Black b3_19(b2_19_gen, b2_19_prop, b2_15_gen, b2_15_prop, b3_19_gen, b3_19_prop);
	Black b3_21(b2_21_gen, b2_21_prop, b2_17_gen, b2_17_prop, b3_21_gen, b3_21_prop);
	Black b3_23(b2_23_gen, b2_23_prop, b2_19_gen, b2_19_prop, b3_23_gen, b3_23_prop);
	Black b3_25(b2_25_gen, b2_25_prop, b2_21_gen, b2_21_prop, b3_25_gen, b3_25_prop);
	Black b3_27(b2_27_gen, b2_27_prop, b2_23_gen, b2_23_prop, b3_27_gen, b3_27_prop);
	Black b3_29(b2_29_gen, b2_29_prop, b2_25_gen, b2_25_prop, b3_29_gen, b3_29_prop);
	Black b3_31(b2_31_gen, b2_31_prop, b2_27_gen, b2_27_prop, b3_31_gen, b3_31_prop);

	Black b4_17(b3_17_gen, b3_17_prop, b3_9_gen, b3_9_prop, b4_17_gen, b4_17_prop);
	Black b4_19(b3_19_gen, b3_19_prop, b3_11_gen, b3_11_prop, b4_19_gen, b4_19_prop);
	Black b4_21(b3_21_gen, b3_21_prop, b3_13_gen, b3_13_prop, b4_21_gen, b4_21_prop);
	Black b4_23(b3_23_gen, b3_23_prop, b3_15_gen, b3_15_prop, b4_23_gen, b4_23_prop);
	Black b4_25(b3_25_gen, b3_25_prop, b3_17_gen, b3_17_prop, b4_25_gen, b4_25_prop);
	Black b4_27(b3_27_gen, b3_27_prop, b3_19_gen, b3_19_prop, b4_27_gen, b4_27_prop);
	Black b4_29(b3_29_gen, b3_29_prop, b3_21_gen, b3_21_prop, b4_29_gen, b4_29_prop);
	Black b4_31(b3_31_gen, b3_31_prop, b3_23_gen, b3_23_prop, b4_31_gen, b4_31_prop);

	Grey g1_1(gen[1], prop[1], cin, g1_1_gen);
	Grey g6_2(gen[2], prop[2], g1_1_gen, g6_2_gen);
	Grey g2_3(b1_3_gen, b1_3_prop, g1_1_gen, g2_3_gen);
	Grey g6_4(gen[4], prop[4], g2_3_gen, g6_4_gen);
	Grey g3_5(b2_5_gen, b2_5_prop, g1_1_gen, g3_5_gen);
	Grey g6_6(gen[6], prop[6], g3_5_gen, g6_6_gen);
	Grey g3_7(b2_7_gen, b2_7_prop, g2_3_gen, g3_7_gen);
	Grey g6_8(gen[8], prop[8], g3_7_gen, g6_8_gen);
	Grey g4_9(b3_9_gen, b3_9_prop, g1_1_gen, g4_9_gen);
	Grey g6_10(gen[10], prop[10], g4_9_gen, g6_10_gen);
	Grey g4_11(b3_11_gen, b3_11_prop, g2_3_gen, g4_11_gen);
	Grey g6_12(gen[12], prop[12], g4_11_gen, g6_12_gen);
	Grey g4_13(b3_13_gen, b3_13_prop, g3_5_gen, g4_13_gen);
	Grey g6_14(gen[14], prop[14], g4_13_gen, g6_14_gen);
	Grey g4_15(b3_15_gen, b3_15_prop, g3_7_gen, g4_15_gen);
	Grey g6_16(gen[16], prop[16], g4_15_gen, g6_16_gen);
	Grey g5_17(b4_17_gen, b4_17_prop, g1_1_gen, g5_17_gen);
	Grey g6_18(gen[18], prop[18], g5_17_gen, g6_18_gen);
	Grey g5_19(b4_19_gen, b4_19_prop, g2_3_gen, g5_19_gen);
	Grey g6_20(gen[20], prop[20], g5_19_gen, g6_20_gen);
	Grey g5_21(b4_21_gen, b4_21_prop, g3_5_gen, g5_21_gen);
	Grey g6_22(gen[22], prop[22], g5_21_gen, g6_22_gen);
	Grey g5_23(b4_23_gen, b4_23_prop, g3_7_gen, g5_23_gen);
	Grey g6_24(gen[24], prop[24], g5_23_gen, g6_24_gen);
	Grey g5_25(b4_25_gen, b4_25_prop, g4_9_gen, g5_25_gen);
	Grey g6_26(gen[26], prop[26], g5_25_gen, g6_26_gen);
	Grey g5_27(b4_27_gen, b4_27_prop, g4_11_gen, g5_27_gen);
	Grey g6_28(gen[28], prop[28], g5_27_gen, g6_28_gen);
	Grey g5_29(b4_29_gen, b4_29_prop, g4_13_gen, g5_29_gen);
	Grey g6_30(gen[30], prop[30], g5_29_gen, g6_30_gen);
	Grey g5_31(b4_31_gen, b4_31_prop, g4_15_gen, g5_31_gen);
	
	xor(sum[0],a[0]^b[0],cin);
	xor(sum[1], prop[2], g1_1_gen);
	xor(sum[2], prop[3], g6_2_gen);
	xor(sum[3], prop[4], g2_3_gen);
	xor(sum[4], prop[5], g6_4_gen);
	xor(sum[5], prop[6], g3_5_gen);
	xor(sum[6], prop[7], g6_6_gen);
	xor(sum[7], prop[8], g3_7_gen);
	xor(sum[8], prop[9], g6_8_gen);
	xor(sum[9], prop[10], g4_9_gen);
	xor(sum[10], prop[11], g6_10_gen);
	xor(sum[11], prop[12], g4_11_gen);
	xor(sum[12], prop[13], g6_12_gen);
	xor(sum[13], prop[14], g4_13_gen);
	xor(sum[14], prop[15], g6_14_gen);
	xor(sum[15], prop[16], g4_15_gen);
	xor(sum[16], prop[17], g6_16_gen);
	xor(sum[17], prop[18], g5_17_gen);
	xor(sum[18], prop[19], g6_18_gen);
	xor(sum[19], prop[20], g5_19_gen);
	xor(sum[20], prop[21], g6_20_gen);
	xor(sum[21], prop[22], g5_21_gen);
	xor(sum[22], prop[23], g6_22_gen);
	xor(sum[23], prop[24], g5_23_gen);
	xor(sum[24], prop[25], g6_24_gen);
	xor(sum[25], prop[26], g5_25_gen);
	xor(sum[26], prop[27], g6_26_gen);
	xor(sum[27], prop[28], g5_27_gen);
	xor(sum[28], prop[29], g6_28_gen);
	xor(sum[29], prop[30], g5_29_gen);
	xor(sum[30], prop[31], g6_30_gen);
	xor(sum[31], a[31]^b[31], g5_31_gen);

	wire temp=(a[31]^b[31])*g5_31_gen;
	or(cout,a[31]*b[31],temp);

endmodule
