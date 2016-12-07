module brent_kung_generator(inG, inP, carry
	);

	// Assiging ports as in/out
	input [31:0] inG, inP;
	output [31:0] carry;
	
	/// Wires
	wire l1_5;
	wire l1_7;
	wire l1_9;
	wire l1_11;
	wire l1_13;
	wire l1_15;
	wire l1_17;
	wire l1_19;
	wire l1_21;
	wire l1_23;
	wire l1_25;
	wire l1_27;
	wire l1_29;
	wire l1_31;
	wire l1_33;
	wire l1_35;
	wire l1_37;
	wire l1_39;
	wire l1_41;
	wire l1_43;
	wire l1_45;
	wire l1_47;
	wire l1_49;
	wire l1_51;
	wire l1_53;
	wire l1_55;
	wire l1_57;
	wire l1_59;
	wire l1_61;
	wire l2_13;
	wire l2_21;
	wire l2_29;
	wire l2_37;
	wire l2_45;
	wire l2_53;
	wire l2_61;
	wire l3_29;
	wire l3_45;
	wire l3_61;
	wire l4_61;
	wire l4_62;

	/// Top Layer
	assign carry[0] = inG[0];
	//// Level 1
	grey_box m1(inG[1], inP[1], carry[0], carry[1]);
	black_box m2(inG[3], inP[3], inG[2], inP[2], l1_5, l1_6);
	black_box m3(inG[5], inP[5], inG[4], inP[4], l1_9, l1_10);
	black_box m4(inG[7], inP[7], inG[6], inP[6], l1_13, l1_14);
	black_box m5(inG[9], inP[9], inG[8], inP[8], l1_17, l1_18);
	black_box m6(inG[11], inP[11], inG[10], inP[10], l1_21, l1_22);
	black_box m7(inG[13], inP[13], inG[12], inP[12], l1_25, l1_26);
	black_box m8(inG[15], inP[15], inG[14], inP[14], l1_29, l1_30);
	black_box m9(inG[17], inP[17], inG[16], inP[16], l1_33, l1_34);
	black_box m10(inG[19], inP[19], inG[18], inP[18], l1_37, l1_38);
	black_box m11(inG[21], inP[21], inG[20], inP[20], l1_41, l1_42);
	black_box m12(inG[23], inP[23], inG[22], inP[22], l1_45, l1_46);
	black_box m13(inG[25], inP[25], inG[24], inP[24], l1_49, l1_50);
	black_box m14(inG[27], inP[27], inG[26], inP[26], l1_53, l1_54);
	black_box m15(inG[29], inP[29], inG[28], inP[28], l1_57, l1_58);
	black_box m16(inG[31], inP[31], inG[30], inP[30], l1_61, l1_62);

	//// Level 2
	grey_box m17(l1_5, l1_6, carry[1], carry[3]);
	black_box m18(l1_13, l1_14, l1_9, l1_10, l2_13, l2_14);
	black_box m19(l1_21, l1_22, l1_17, l1_18, l2_21, l2_22);
	black_box m20(l1_29, l1_30, l1_25, l1_26, l2_29, l2_30);
	black_box m21(l1_37, l1_38, l1_33, l1_34, l2_37, l2_38);
	black_box m22(l1_45, l1_46, l1_41, l1_42, l2_45, l2_46);
	black_box m23(l1_53, l1_54, l1_49, l1_50, l2_53, l2_54);
	black_box m24(l1_61, l1_62, l1_57, l1_58, l2_61, l2_62);

	//// Level 3
	grey_box m25(l2_13, l2_14, carry[3], carry[7]);
	black_box m26(l2_29, l2_30, l2_21, l2_22, l3_29, l3_30);
	black_box m27(l2_45, l2_46, l2_37, l2_38, l3_45, l3_46);
	black_box m28(l2_61, l2_62, l2_53, l2_54, l3_61, l3_62);

	//// Level 4
	grey_box m29(l3_29, l3_30, carry[7], carry[15]);
	black_box m30(l3_61, l3_62, l3_45, l3_46, l4_61, l4_62);

	//// Level 5
	grey_box m31(l4_61, l4_62, carry[15], carry[31]);

	/// Bottom Layer
	//// Level 1
	grey_box m32(inG[2], inP[2], carry[1], carry[2]);
	grey_box m33(inG[4], inP[4], carry[3], carry[4]);
	grey_box m34(inG[6], inP[6], carry[5], carry[6]);
	grey_box m35(inG[8], inP[8], carry[7], carry[8]);
	grey_box m36(inG[10], inP[10], carry[9], carry[10]);
	grey_box m37(inG[12], inP[12], carry[11], carry[12]);
	grey_box m38(inG[14], inP[14], carry[13], carry[14]);
	grey_box m39(inG[16], inP[16], carry[15], carry[16]);
	grey_box m40(inG[18], inP[18], carry[17], carry[18]);
	grey_box m41(inG[20], inP[20], carry[19], carry[20]);
	grey_box m42(inG[22], inP[22], carry[21], carry[22]);
	grey_box m43(inG[24], inP[24], carry[23], carry[24]);
	grey_box m44(inG[26], inP[26], carry[25], carry[26]);
	grey_box m45(inG[28], inP[28], carry[27], carry[28]);
	grey_box m46(inG[30], inP[30], carry[29], carry[30]);

	//// Level 2
	grey_box m47(l1_9, l1_10, carry[3], carry[5]);
	grey_box m48(l1_17, l1_18, carry[7], carry[9]);
	grey_box m49(l1_25, l1_26, carry[11], carry[13]);
	grey_box m50(l1_33, l1_34, carry[15], carry[17]);
	grey_box m51(l1_41, l1_42, carry[19], carry[21]);
	grey_box m52(l1_49, l1_50, carry[23], carry[25]);
	grey_box m53(l1_57, l1_58, carry[27], carry[29]);

	//// Level 3
	grey_box m54(l2_21, l2_22, carry[7], carry[11]);
	grey_box m55(l2_37, l2_38, carry[15], carry[19]);
	grey_box m56(l2_53, l2_54, carry[23], carry[27]);

	//// Level 4
	grey_box m57(l3_45, l3_46, carry[15], carry[23]);

endmodule
