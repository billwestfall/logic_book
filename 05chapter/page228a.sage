# sage: load ("page228a.sage")
# a|b
# ~(~a&~b)
# Equivalent?:
# True
# a&(b|c)
# (b&a)|(c&a)
# Equivalent?:
# True
# (a&b)->c
# (~(a->c))->~b
# Equivalent?:
# True
# (a|b)|c
# ~a->(~b->c)
# Equivalent?:
# True
# a|(b<->c)
# a|(~b<->~c)
# Equivalent?:
# True
# (a&b)|((c&d)|a)
# (c|a)&(c|b)&((d|a)&(d|b))|a
# Equivalent?:
# True


f = propcalc.formula("a|b")
print (f)
g = propcalc.formula("~(~a&~b)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a&(b|c)")
print (f)
g = propcalc.formula("(b&a)|(c&a)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("(a&b)->c")
print (f)
g = propcalc.formula("(~(a->c))->~b")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("(a|b)|c")
print (f)
g = propcalc.formula("~a->(~b->c)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("a|(b<->c)")
print (f)
g = propcalc.formula("a|(~b<->~c)")
print (g)
print ("Equivalent?:")
print f == g

f = propcalc.formula("(a&b)|((c&d)|a)")
print (f)
g = propcalc.formula("(c|a)&(c|b)&((d|a)&(d|b))|a")
print (g)
print ("Equivalent?:")
print f == g
