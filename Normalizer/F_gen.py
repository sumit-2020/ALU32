import sys

n = int(sys.argv[1])

print "module F" + str(n) + "(inA, Z\n\t);"
print
print "\t// Assigning ports as in/out"
print "\tinput [" + str(n-1) + ":0] inA;"
print "\toutput Z;"
print
print "\twire [" + str(n-1) + ":0] A;"
print "\talt_invert #(" + str(n) + ") m(inA, A);"
print
print "\twire Zn;"
print "\tfunc" + str(n) + " m2(A, Zn);"
print
print "\tassign Z = ~Zn;"
print
print "endmodule"
