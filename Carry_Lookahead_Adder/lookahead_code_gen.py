def t(n, m):
	if (n< m):
		return ""
	
	elif (n == m):
		return "g[" + str(n) + "]"
	
	else:
		return "p[" + str(n) + "]*" + t(n-1, m);

def q(n, m):
	if (m < -1):
		return ""
	if (m == -1):
		return "(" + t(n, m) + ");"
	return "(" + t(n, m) + ") | " + q(n, m-1)

def c(n):
	return q(n, n).replace("g[-1]", "cin")


	print "\tassign c[0] = cin;"
for i in range (0, 32):
	print "\tassign c[" + str(i+1) + "] = " + c(i)
