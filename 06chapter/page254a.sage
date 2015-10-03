# sage: load ("page254a.sage")
# A->B
# C->D
# {'A->B', 'C->D'}
# Subsets:
# [{}, {'A->B'}, {'C->D'}, {'A->B', 'C->D'}]
# C|~D
# ~D|C
# C|C
# {'C|~D', '~D|C', 'C|C'}
# Subsets:
# [{}, {'C|~D'}, {'~D|C'}, {'C|C'}, {'C|~D', '~D|C'}, {'C|~D', 'C|C'}, {'~D|C', 'C|C'}, {'C|~D', '~D|C', 'C|C'}]
# (B&A)<->K
# {'(B&A)<->K'}
# Subsets:
# [{}, {'(B&A)<->K'}]
#
# {''}
# Subsets:
# [{}, {''}]

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
