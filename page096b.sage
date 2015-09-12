# run as

#sage: load ("page096b.sage")
#g      h      value
#False  False  False
#False  True   True
#True   False  True
#True   True   True

#b      a      value
#False  False  True
#False  True   True
#True   False  False
#True   True   True

#d      a      value
#False  False  False
#False  True   False
#True   False  False
#True   True   True

#f      g      h      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      value
#False  True
#True   False

#b      c      d      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   True

#g      h      value
#False  False  False
#False  True   True
#True   False  True
#True   True   True

#a      b      value
#False  False  False
#False  True   True
#True   False  True
#True   True   True

#d      a      value
#False  False  False
#False  True   False
#True   False  False
#True   True   True

#f      j      h      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      value
#False  False
#True   True

#d      c      b      value
#False  False  False  False
#False  False  True   False
#False  True   False  True
#False  True   True   False
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   False

f = propcalc.formula("(g|h)")
print f.truthtable()

g = propcalc.formula("~(b&~a)")
print g.truthtable()

h = propcalc.formula("(d<->a)&d")
print h.truthtable()

i = propcalc.formula("f&(g|h)")
print i.truthtable()

j = propcalc.formula("a<->(~a<->a)")
print j.truthtable()

k = propcalc.formula("~(~b|(~c|~d))")
print k.truthtable()

l = propcalc.formula("~g->h")
print l.truthtable()

m = propcalc.formula("(a|b)")
print m.truthtable()

n = propcalc.formula("(d&a)")
print n.truthtable()

o = propcalc.formula("(f&j)|h")
print o.truthtable()

p = propcalc.formula("~(a->~a)")
print p.truthtable()

q = propcalc.formula("(d|c)&~b")
print q.truthtable()
