
a = "(A -> B)"
b = "(C & D)"
c = "(D -> A)"
x = Set([a, b, c])
print x
print "Subsets:"
print list(x.subsets())

print "(A -> B) in set?"
print "(A -> B)" in x
print "(D -> A, A -> B) in set?"
print "(D -> A, A -> B)" in x
print "(A -> D, C & D) in set?"
print "(A -> D, C & D)" in x
print "( ) in set?"
print "" in x
print "(C & D, D -> A, A -> B) in set?"
print "(C & D, D -> A, A -> B)" in x
