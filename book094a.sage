# run as

#sage: load ("page094a.sage")
#a      value
#False  False
#True   True

#a      value
#False  False
#True   True

#w      y      h      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   True

#w      y      h      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   True

#e      h      value
#False  False  False
#False  True   True
#True   False  True
#True   True   True

#h      j      e      value
#False  False  False  False
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#c      value
#False  True
#True   True

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#b      d      value
#False  False  False
#False  True   False
#True   False  False
#True   True   True

#b      d      value
#False  False  False
#False  True   True
#True   False  False
#True   True   False

#a      value
#False  False
#True   True

#a      b      value
#False  False  False
#False  True   True
#True   False  True
#True   True   True   

f = propcalc.formula("a&a")
print f.truthtable()

g = propcalc.formula("a|a")
print g.truthtable()

h = propcalc.formula("(w&y)->h")
print h.truthtable()

i = propcalc.formula("(w->(y->h))")
print i.truthtable()

j = propcalc.formula("(e|h)")
print j.truthtable()

k = propcalc.formula("((h|j)|e)")
print k.truthtable()

l = propcalc.formula("~(c&~c)")
print l.truthtable()

m = propcalc.formula("(a->(b->a))")
print m.truthtable()

n = propcalc.formula("(b&d)")
print n.truthtable()

o = propcalc.formula("(~b&d)")
print o.truthtable()

p = propcalc.formula("a")
print p.truthtable()

q = propcalc.formula("a|b")
print q.truthtable()
