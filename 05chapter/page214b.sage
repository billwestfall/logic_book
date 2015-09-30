# run as

# sage: load ("page214b.sage")
# (a|~~b)&c
# (a|~~b)&c
# Equivalent?:
# True
# (a&b)&c
# a&(b&c)
# Equivalent?:
# True
# a
# ~~a
# Equivalent?:
# True
# a&a
# a|a
# Equivalent?:
# True
# a->b
# ~b->~a
# Equivalent?:
# True
# a<->b
# b<->a
# Equivalent?:
# True

f = propcalc.formula("(a|~~b)&c")
print (f)
g = propcalc.formula("(a|~~b)&c")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("(a&b)&c")
print (f)
g = propcalc.formula("a&(b&c)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a")
print (f)
g = propcalc.formula("~~a")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a&a")
print (f)
g = propcalc.formula("a|a")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a->b")
print (f)
g = propcalc.formula("~b->~a")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a<->b")
print (f)
g = propcalc.formula("b<->a")
print (g)
print ("Equivalent?:")
print f == g
