# run as

#sage: load ("page092a.sage")
#a      value
#False  False
#True   True

#j      k      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#a      value
#False  True
#True   True

#e      h      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#b      d      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#c      d      e      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   False

#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   False

#a      b      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#j      k      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#b      d      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#a      d      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#m      n      value
#False  False  False
#False  True   False
#True   False  False
#True   True   False  

f = propcalc.formula("(~a)->a")
print f.truthtable()

g = propcalc.formula("j->(k->j)")
print g.truthtable()

h = propcalc.formula("(a<->~a)->~(a<->~a)")
print h.truthtable()

i = propcalc.formula("(e<->h)->(~e->~h)")
print i.truthtable()

j = propcalc.formula("(~b&~d)|~(b|d)")
print j.truthtable()

k = propcalc.formula("((c->d)&(d->e)&c)&~e")
print k.truthtable()

l = propcalc.formula("((a|b)&(a|c))->~(b&c)")
print l.truthtable()

m = propcalc.formula("~((a|b)&(b|b))&(~a&~b)")
print m.truthtable()

n = propcalc.formula("(j|~k)<->~~(k->j)")
print n.truthtable()

o = propcalc.formula("~b->((b|d)->d)")
print o.truthtable()

p = propcalc.formula("((a|~d)&~(a&d))->~d")
print p.truthtable()

q = propcalc.formula("(m<->~n)&(m<->n)")
print q.truthtable()
