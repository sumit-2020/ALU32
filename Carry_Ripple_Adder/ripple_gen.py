s = "full_adder fa"

for i in range(0, 33):
	j = str(i)
	k = str(i+1)
	d = s + j + "(inA[" + j + "], inB[" + j + "], c" + j + ", sum[" +  j + "], c" + k + ");"
	print "\t" +  d
