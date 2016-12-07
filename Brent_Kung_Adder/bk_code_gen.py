count = 0;

def m_gen():
	global count
	count = count + 1
	return "m" + str(count)


def black_box(m, i):
	g1 = ("inG[" + str(i) + "]" + ", ") if (m == 1) else "l" + str(m-1) + "_" + str(2*i - 1) + ", "
	p1 = ("inP[" + str(i) + "]" + ", ") if (m == 1) else "l" + str(m-1) + "_" + str(2*i) + ", "

	g0 = ("inG[" + str(i - 2**(m-1)) + "]" + ", ") if (m == 1) else "l" + str(m-1) + "_" + str(2*(i - 2**(m-1)) - 1) + ", "
	p0 = ("inP[" + str(i - 2**(m-1)) + "]" + ", ") if (m == 1) else "l" + str(m-1) + "_" + str(2*(i - 2**(m-1))) + ", "

	w1 = "l" + str(m) + "_" + str(2*i - 1) + ", "
	w2 = "l" + str(m) + "_" + str(2*i)

	return "black_box " + m_gen() + "(" + g1 + p1 + g0 + p0 + w1 + w2 + ");"

def grey_box(m, i):
	g1 = ("inG[" + str(i) + "]" + ", ") if (m == 1) else "l" + str(m-1) + "_" + str(2*i - 1) + ", "
	p1 = ("inP[" + str(i) + "]" + ", ") if (m == 1) else "l" + str(m-1) + "_" + str(2*i) + ", "

	g0 = "carry[" + str(i - 2**(m-1)) + "], " 
	c = "carry[" + str(i) + "]"

	return "grey_box " + m_gen() + "(" + g1 + p1 + g0 + c + ");"


print "\t/// Wires"
for i in range(5, 62, 2):
	print "\twire l1_" + str(i) + ";"

for i in range(13, 62, 8):
	print "\twire l2_" + str(i) + ";"

for i in range(29, 62, 16):
	print "\twire l3_" + str(i) + ";"

print "\twire l4_61;"
print "\twire l4_62;"
print

print "\t/// Top Layer"
for m in range (1, 6):
	print "\t//// Level " + str(m)
	print "\t" + grey_box(m, 2**m - 1)
	k = 2
	while ((k*(2**m) - 1) < 32):
		print "\t" + black_box(m, (k*(2**m) - 1))
		k = k + 1
	print

print "\t/// Bottom Layer"
for m in range(1, 5):
	print "\t//// Level " + str(m)
	n = 1
	a = 2**m + 2**(m-1) -1 
	while (a < 32):
		print "\t" + grey_box(m, a)
		n = n + 1
		a = (n*(2**m) + 2**(m-1) - 1)
	print
