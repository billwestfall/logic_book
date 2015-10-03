a = "A->B"
b = "C->D"
print a
print b
x = Set([a,b])
print "Subsets:"
print x
print list(x.subsets())

a = "C|~D"
b = "~D|C"
c = "C|C"
print a
print b
print c
x = Set([a,b,c])
print "Subsets:"
print x
print list(x.subsets())

a = "(B&A)<->K"
print a
x = Set([a])
print "Subsets:"
print x
print list(x.subsets())

a = ""
print a
x = Set([a])
print "Subsets:"
print x
print list(x.subsets())
