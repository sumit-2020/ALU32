count = 0

def mgen():
	global count
	count = count + 1
	return "m" + str(count)

def black_box(m, i, j):
	g1 = ("inG[" + str(i) + "], ") if (m == 1) else ("l" + str(m-1) + "_" + str(2*i - 1) + ", ")
	p1 = ("inP[" + str(i) + "], ") if (m == 1) else ("l" + str(m-1) + "_" + str(2*i) + ", ")

	g0 = ("inG[" + str(j) + "], ") if (m == 1) else ("l" + str(m-1) + "_" + str(2*j - 1) + ", ")
	p0 = ("inP[" + str(j) + "], ") if (m == 1) else ("l" + str(m-1) + "_" + str(2*j) + ", ")

	g2 = "l" + str(m) + "_" + str(2*i - 1) + ", "
	p2 = "l" + str(m) + "_" + str(2*i)

	return "black_box " + mgen() + "(" + g1 + p1 + g0 + p0 + g2 + p2 + ");"

def grey_box(m, i, j):
	g1 = ("inG[" + str(i) + "], ") if (m == 1) else ("l" + str(m-1) + "_" + str(2*i - 1) + ", ")
	p1 = ("inP[" + str(i) + "], ") if (m == 1) else ("l" + str(m-1) + "_" + str(2*i) + ", ")

	g0 = "Carry[" + str(j) + "], "
	g2 = "Carry[" + str(i) + "]"

	return "grey_box " + mgen() + "(" + g1 + p1 + g0 + g2 + ");"

def buffgen(l, i):
	s = "assign "
	if(l == 0):
		s = s + "l" + str(l+1) + "_" + str(2*i-1) + " = inG[" + str(i) + "]; "
		s = s + "\n\tassign l" + str(l+1) + "_" + str(2*i) + " = inP[" + str(i) + "]; "
	else:
		s = s + "l" + str(l+1) + "_" + str(2*i-1) + " = l" + str(l) + "_" + str(2*i-1) + "; "
		s = s + "\n\tassign l" + str(l+1) + "_" + str(2*i) + " = l" + str(l) + "_" + str(2*i) + ";"
	return s

#Running code:

print "\t// Wires"
for i in range(2, 32):
	s = ""
	d = ""
	levels = len("{0:b}".format(i)) - 1
	c = 1
	while (c <= levels):
		s = s + "wire l" + str(c) + "_" + str(2*i-1) + ";"
		d = d +  "wire l" + str(c) + "_" + str(2*i) + ";"
		c = c+1
	print "\t" + s
	print "\t" + d

print
print "\t// Generating inter-wire connections"
for i in range(2, 32):
	lmax = len("{0:b}".format(i))
	a = i
	l = 0
	while (l < lmax):
		if (a%2 == 0):
			if (i%2 == 1):
				print "\t" + buffgen(l, i)
		l = l+1
		a = a/2

print
print "\t// Black and Grey box connections"
for level in range (1, 6):
	print "\t// Level " + str(level)

	a = 2**(level-1)
	ainit = a
	for i in range (0, 2**(level-1)):
		if(a%2 == 1):
			print "\t" + grey_box(level, a, 2**(level-1) - 1)
		a = a + 1
	
	while (a < 32):
		a = a + ainit
		j = a-1
		for i in range (0, 2**(level-1)):
			if(a%2 == 1):
				print "\t" + black_box(level, a, j)
			a = a + 1

	print

print "\t// Last layer grey-box connections"
for i in range(2, 32, 2):
	print "\t" + grey_box(1, i, i-1)
