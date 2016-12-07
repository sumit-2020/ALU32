for i in range(1,6):
	for t in range(2**(i-1),2*(2**(i-1))):
		num1=str(i)
		num2=str(t)
		d = "g" + num1 + "_" + num2 + "_gen;"
		print "\twire " + d
	


