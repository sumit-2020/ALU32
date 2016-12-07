for c in range(2,5):

	for i in range(2**c, 32):
		c_=c-1
		cs=str(c)
		cs_1=str(c-1)
		j = str(i)
		j_1=str(i-(2**c_))
		d = "Black b" + cs + "_"+ j + "(b" + cs_1 + "_" + j + "_gen, b" + cs_1 + "_" + j + "_prop, b" + cs_1 + "_" +  j_1 + "_gen, b" + cs_1 + "_" +  j_1 + "_prop, b" + cs + "_" +  j + "_gen, b" + cs + "_" +  j + "_prop);"
		print "\t" +  d
