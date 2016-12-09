for i in range(1, 16):
	print "assign inArray[" + str(i) + "] = {{" + str(16-i) + "{1'b0}}, ~p[" + str(i) + "][15], p[" + str(i) + "][14:0], {" + str(i) + "{1'b0}}};"
