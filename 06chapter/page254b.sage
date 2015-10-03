
a = "(A -> B)"
b = "(C & D)"
c = "(D -> A)"
x = Set([a, b, c])
print x
print "Subsets:"
print list(x.subsets())
