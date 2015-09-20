# run as

#sage: load ("page098a.sage")
#(a, b->h, c|a)
#True
#(a, b->h, b)
#True
#(l, l->j, ~j)
#False
#(c|~c, ~c&d, ~d)
#False
#((e<->h)->e, h&~e)
#True

f, g, h = propcalc.get_formulas("a", "b->h", "c|a")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("a", "b->h", "b")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("l", "l->j", "~j")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("c|~c", "~c&d", "~d")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g = propcalc.get_formulas("(e<->h)->e", "h&~e")
print (f, g)
print propcalc.consistent(f, g)
