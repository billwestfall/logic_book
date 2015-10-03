a = "A->B"
b = "C->D"
print a
print b
x = Set([a,b])
print x
print "Subsets:"
print list(x.subsets())

a = "C|~D"
b = "~D|C"
c = "C|C"
print a
print b
print c
x = Set([a,b,c])
print x
print "Subsets:"
print list(x.subsets())

a = "(B&A)<->K"
print a
x = Set([a])
print x
print "Subsets:"
print list(x.subsets())

a = ""
print a
x = Set([a])
print x
print "Subsets:"
print list(x.subsets())
