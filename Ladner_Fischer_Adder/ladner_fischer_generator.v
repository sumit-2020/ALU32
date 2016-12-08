module ladner_fischer_generator(inG, inP, Carry
	);

	// Assigining ports as in/out
	input [31:0] inG, inP;
	output [31:0] Carry;
	
	// Logic
	assign Carry[0] = inG[0];
	
	// Wires
	wire l1_3;
	wire l1_4;
	wire l1_5;
	wire l1_6;
	wire l1_7;wire l2_7;
	wire l1_8;wire l2_8;
	wire l1_9;wire l2_9;
	wire l1_10;wire l2_10;
	wire l1_11;wire l2_11;
	wire l1_12;wire l2_12;
	wire l1_13;wire l2_13;
	wire l1_14;wire l2_14;
	wire l1_15;wire l2_15;wire l3_15;
	wire l1_16;wire l2_16;wire l3_16;
	wire l1_17;wire l2_17;wire l3_17;
	wire l1_18;wire l2_18;wire l3_18;
	wire l1_19;wire l2_19;wire l3_19;
	wire l1_20;wire l2_20;wire l3_20;
	wire l1_21;wire l2_21;wire l3_21;
	wire l1_22;wire l2_22;wire l3_22;
	wire l1_23;wire l2_23;wire l3_23;
	wire l1_24;wire l2_24;wire l3_24;
	wire l1_25;wire l2_25;wire l3_25;
	wire l1_26;wire l2_26;wire l3_26;
	wire l1_27;wire l2_27;wire l3_27;
	wire l1_28;wire l2_28;wire l3_28;
	wire l1_29;wire l2_29;wire l3_29;
	wire l1_30;wire l2_30;wire l3_30;
	wire l1_31;wire l2_31;wire l3_31;wire l4_31;
	wire l1_32;wire l2_32;wire l3_32;wire l4_32;
	wire l1_33;wire l2_33;wire l3_33;wire l4_33;
	wire l1_34;wire l2_34;wire l3_34;wire l4_34;
	wire l1_35;wire l2_35;wire l3_35;wire l4_35;
	wire l1_36;wire l2_36;wire l3_36;wire l4_36;
	wire l1_37;wire l2_37;wire l3_37;wire l4_37;
	wire l1_38;wire l2_38;wire l3_38;wire l4_38;
	wire l1_39;wire l2_39;wire l3_39;wire l4_39;
	wire l1_40;wire l2_40;wire l3_40;wire l4_40;
	wire l1_41;wire l2_41;wire l3_41;wire l4_41;
	wire l1_42;wire l2_42;wire l3_42;wire l4_42;
	wire l1_43;wire l2_43;wire l3_43;wire l4_43;
	wire l1_44;wire l2_44;wire l3_44;wire l4_44;
	wire l1_45;wire l2_45;wire l3_45;wire l4_45;
	wire l1_46;wire l2_46;wire l3_46;wire l4_46;
	wire l1_47;wire l2_47;wire l3_47;wire l4_47;
	wire l1_48;wire l2_48;wire l3_48;wire l4_48;
	wire l1_49;wire l2_49;wire l3_49;wire l4_49;
	wire l1_50;wire l2_50;wire l3_50;wire l4_50;
	wire l1_51;wire l2_51;wire l3_51;wire l4_51;
	wire l1_52;wire l2_52;wire l3_52;wire l4_52;
	wire l1_53;wire l2_53;wire l3_53;wire l4_53;
	wire l1_54;wire l2_54;wire l3_54;wire l4_54;
	wire l1_55;wire l2_55;wire l3_55;wire l4_55;
	wire l1_56;wire l2_56;wire l3_56;wire l4_56;
	wire l1_57;wire l2_57;wire l3_57;wire l4_57;
	wire l1_58;wire l2_58;wire l3_58;wire l4_58;
	wire l1_59;wire l2_59;wire l3_59;wire l4_59;
	wire l1_60;wire l2_60;wire l3_60;wire l4_60;
	wire l1_61;wire l2_61;wire l3_61;wire l4_61;
	wire l1_62;wire l2_62;wire l3_62;wire l4_62;

	// Generating inter-wire connections
	assign l2_9 = l1_9; 
	assign l2_10 = l1_10;
	assign l2_17 = l1_17; 
	assign l2_18 = l1_18;
	assign l3_17 = l2_17; 
	assign l3_18 = l2_18;
	assign l3_21 = l2_21; 
	assign l3_22 = l2_22;
	assign l2_25 = l1_25; 
	assign l2_26 = l1_26;
	assign l2_33 = l1_33; 
	assign l2_34 = l1_34;
	assign l3_33 = l2_33; 
	assign l3_34 = l2_34;
	assign l4_33 = l3_33; 
	assign l4_34 = l3_34;
	assign l3_37 = l2_37; 
	assign l3_38 = l2_38;
	assign l4_37 = l3_37; 
	assign l4_38 = l3_38;
	assign l2_41 = l1_41; 
	assign l2_42 = l1_42;
	assign l4_41 = l3_41; 
	assign l4_42 = l3_42;
	assign l4_45 = l3_45; 
	assign l4_46 = l3_46;
	assign l2_49 = l1_49; 
	assign l2_50 = l1_50;
	assign l3_49 = l2_49; 
	assign l3_50 = l2_50;
	assign l3_53 = l2_53; 
	assign l3_54 = l2_54;
	assign l2_57 = l1_57; 
	assign l2_58 = l1_58;

	// Black and Grey box connections
	// Level 1
	grey_box m1(inG[1], inP[1], Carry[0], Carry[1]);
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

	// Level 2
	grey_box m17(l1_5, l1_6, Carry[1], Carry[3]);
	black_box m18(l1_13, l1_14, l1_9, l1_10, l2_13, l2_14);
	black_box m19(l1_21, l1_22, l1_17, l1_18, l2_21, l2_22);
	black_box m20(l1_29, l1_30, l1_25, l1_26, l2_29, l2_30);
	black_box m21(l1_37, l1_38, l1_33, l1_34, l2_37, l2_38);
	black_box m22(l1_45, l1_46, l1_41, l1_42, l2_45, l2_46);
	black_box m23(l1_53, l1_54, l1_49, l1_50, l2_53, l2_54);
	black_box m24(l1_61, l1_62, l1_57, l1_58, l2_61, l2_62);

	// Level 3
	grey_box m25(l2_9, l2_10, Carry[3], Carry[5]);
	grey_box m26(l2_13, l2_14, Carry[3], Carry[7]);
	black_box m27(l2_25, l2_26, l2_21, l2_22, l3_25, l3_26);
	black_box m28(l2_29, l2_30, l2_21, l2_22, l3_29, l3_30);
	black_box m29(l2_41, l2_42, l2_37, l2_38, l3_41, l3_42);
	black_box m30(l2_45, l2_46, l2_37, l2_38, l3_45, l3_46);
	black_box m31(l2_57, l2_58, l2_53, l2_54, l3_57, l3_58);
	black_box m32(l2_61, l2_62, l2_53, l2_54, l3_61, l3_62);

	// Level 4
	grey_box m33(l3_17, l3_18, Carry[7], Carry[9]);
	grey_box m34(l3_21, l3_22, Carry[7], Carry[11]);
	grey_box m35(l3_25, l3_26, Carry[7], Carry[13]);
	grey_box m36(l3_29, l3_30, Carry[7], Carry[15]);
	black_box m37(l3_49, l3_50, l3_45, l3_46, l4_49, l4_50);
	black_box m38(l3_53, l3_54, l3_45, l3_46, l4_53, l4_54);
	black_box m39(l3_57, l3_58, l3_45, l3_46, l4_57, l4_58);
	black_box m40(l3_61, l3_62, l3_45, l3_46, l4_61, l4_62);

	// Level 5
	grey_box m41(l4_33, l4_34, Carry[15], Carry[17]);
	grey_box m42(l4_37, l4_38, Carry[15], Carry[19]);
	grey_box m43(l4_41, l4_42, Carry[15], Carry[21]);
	grey_box m44(l4_45, l4_46, Carry[15], Carry[23]);
	grey_box m45(l4_49, l4_50, Carry[15], Carry[25]);
	grey_box m46(l4_53, l4_54, Carry[15], Carry[27]);
	grey_box m47(l4_57, l4_58, Carry[15], Carry[29]);
	grey_box m48(l4_61, l4_62, Carry[15], Carry[31]);

	// Last layer grey-box connections
	grey_box m49(inG[2], inP[2], Carry[1], Carry[2]);
	grey_box m50(inG[4], inP[4], Carry[3], Carry[4]);
	grey_box m51(inG[6], inP[6], Carry[5], Carry[6]);
	grey_box m52(inG[8], inP[8], Carry[7], Carry[8]);
	grey_box m53(inG[10], inP[10], Carry[9], Carry[10]);
	grey_box m54(inG[12], inP[12], Carry[11], Carry[12]);
	grey_box m55(inG[14], inP[14], Carry[13], Carry[14]);
	grey_box m56(inG[16], inP[16], Carry[15], Carry[16]);
	grey_box m57(inG[18], inP[18], Carry[17], Carry[18]);
	grey_box m58(inG[20], inP[20], Carry[19], Carry[20]);
	grey_box m59(inG[22], inP[22], Carry[21], Carry[22]);
	grey_box m60(inG[24], inP[24], Carry[23], Carry[24]);
	grey_box m61(inG[26], inP[26], Carry[25], Carry[26]);
	grey_box m62(inG[28], inP[28], Carry[27], Carry[28]);
	grey_box m63(inG[30], inP[30], Carry[29], Carry[30]);

endmodule
