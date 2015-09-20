# run as

#sage: load ("page077a.sage")
#b      c      a      value
#False  False  False  False
#False  False  True   False
#False  True   False  True
#False  True   True   False
#True   False  False  False
#True   False  True   True
#True   True   False  False
#True   True   True   True

#a      b      c      value
#False  False  False  True
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   True

#u      w      value
#False  False  True
#False  True   False
#True   False  True
#True   True   False

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

f = propcalc.formula("(~b->c)&(a<->b)")
print f.truthtable()

g = propcalc.formula("(a<->(b<->a))|~c")
print g.truthtable()

h = propcalc.formula("~(u|(w->~u)<->w)")
print h.truthtable()

i = propcalc.formula("(a&b)->b")
print i.truthtable()
