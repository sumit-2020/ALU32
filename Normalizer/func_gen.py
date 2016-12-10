import sys

mcount = 0
wcount = 0

def mgen():
	global mcount
	mcount = mcount + 1
	return "m" + str(mcount)


def wgen():
	global wcount
	wcount = wcount + 1
	return "w[" + str(wcount) + "]"

n = int(sys.argv[1])

print "module func" + str(n) + "(A, Z\n\t);"
print 
print "\t// Assigning ports as in/out"
print "\tinput [" + str(n-1) + ": 0] A;"
print "\toutput Z;"
print
print "\t//Logic"
print
print "\twire [" + str((n/2) - 1) + ":0] w;"
print "\tassign w[0] = A[0];"
print
print "\tgrey_box " + mgen() + "(A[3], A[2], A[1], " + wgen() + ");"

for i in range(1, n/4):
	wn = wgen()
	wn1 = wgen()
	base = 4*i
	args = ""
	for j in range(base, base + 4):
		args = "A[" + str(j) + "], " + args
	print "\tblack_box " + mgen() + "(" + args + wn1 + ", " + wn + ");"

print
print "\tfunc" + str(n/2) + " " + mgen() + "(w, Z);"
print 
print "endmodule"
