# run as

# sage: load ("page214o.sage")
# a
# (a|a)|a
# Equivalent?:
# True
# a<->a
# a->(a->a)
# Equivalent?:
# True
# (a|b)->a
# b->a
# Equivalent?:
# True
# (a|b)&c
# (a&c)|(b&c)
# Equivalent?:
# True

f = propcalc.formula("a")
print (f)
g = propcalc.formula("(a|a)|a")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a<->a")
print (f)
g = propcalc.formula("a->(a->a)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("(a|b)->a")
print (f)
g = propcalc.formula("b->a")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("(a|b)&c")
print (f)
g = propcalc.formula("(a&c)|(b&c)")
print (g)
print ("Equivalent?:")
print f == g
