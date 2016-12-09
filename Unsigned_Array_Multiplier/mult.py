'''
def gen(q):
	d=""
	for i in range(0,q):
		d=d+"0"
	return d
for i in range(1,16):
	j=str(i)
	k=str(16-i)
	d="\twire [31:0] p"+j+" ;\n\tassign p"+j+" = {"+k+"'b"+gen(16-i)+",md[15:0]&{15{mr["+j+"]}},"+j+"'b"+gen(i)+"};"
	print d

'''

for i in range(1,16):
	j=str(i)
	k=str(i-1)
	d="\tCSkipA cskipa"+j+"(s" + k +", inArray[" + j + "], s" + j + ");"
	print d
for i in range(0,15):
	j=str(i)
	d="\twire [31:0] s"+j+";"
	print d
