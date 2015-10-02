# sage: load ("page217b.sage")
# ~a|b
# a->b
# Equivalent?:
# True
# a&~a
# b&~b
# Equivalent?:
# True
# ~(a->b)
# a&~b
# Equivalent?:
# True
# a<->b
# ~a<->~b
# Equivalent?:
# True
# a<->b
# (a&b)|(~a&~b)
# Equivalent?:
# True
# ~(a<->b)
# (a&~b)|(~a&b)
# Equivalent?:
# True

f = propcalc.formula("~a|b")
print (f)
g = propcalc.formula("a->b")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a&~a")
print (f)
g = propcalc.formula("b&~b")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("~(a->b)")
print (f)
g = propcalc.formula("a&~b")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a<->b")
print (f)
g = propcalc.formula("~a<->~b")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a<->b")
print (f)
g = propcalc.formula("(a&b)|(~a&~b)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("~(a<->b)")
print (f)
g = propcalc.formula("(a&~b)|(~a&b)")
print (g)
print ("Equivalent?:")
print f == g
