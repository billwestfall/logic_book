
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
