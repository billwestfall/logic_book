

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
