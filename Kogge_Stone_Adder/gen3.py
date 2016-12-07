for c in range(2,6):

	for i in range(2**(c-1), 2*(2**(c-1))):
		c_=c-1
		cs=str(c)
		cs_1=str(c-1)
		j = str(i)
		j_1=str(i-(2**c_))
		d = "Grey g" + cs + "_"+ j + "(b" + cs_1 + "_" + j + "_gen, b" + cs_1 + "_" + j + "_prop, g"+cs_1+"_"+j_1+"gen, g" + cs + "_" +  j + "_gen);"
		print "\t" +  d
