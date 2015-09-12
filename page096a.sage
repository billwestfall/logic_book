# run as

#sage: load ("page096a.sage")
#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   False

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#k      h      value
#False  False  True
#False  True   False
#True   False  False
#True   True   True

#c      b      a      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      b      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#c      a      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#k      h      value
#False  False  True
#False  True   False
#True   False  False
#True   True   True

#c      b      a      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#g      f      value
#False  False  True
#False  True   False
#True   False  True
#True   True   True

#c      b      value
#False  False  True
#False  True   False
#True   False  True
#True   True   True

#h      j      k      value
#False  False  False  False
#False  False  True   True
#False  True   False  True
#False  True   True   False
#True   False  False  False
#True   False  True   True
#True   True   False  False
#True   True   True   True

#d      b      c      value
#False  False  False  True
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#f      g      h      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#g      f      value
#False  False  True
#False  True   False
#True   False  True
#True   True   True

#b      c      value
#False  False  True
#False  True   True
#True   False  False
#True   True   True

#h      j      k      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   False

f = propcalc.formula("~(a&b)")
print f.truthtable()

g = propcalc.formula("a->(b->a)")
print g.truthtable()

h = propcalc.formula("k<->h")
print h.truthtable()

i = propcalc.formula("c&(b|a)")
print i.truthtable()

j = propcalc.formula("~(a|b)")
print j.truthtable()

k = propcalc.formula("(c&~c)|(a->a)")
print k.truthtable()

l = propcalc.formula("~k<->~h")
print l.truthtable()

m = propcalc.formula("((c&b)|a)")
print m.truthtable()

n = propcalc.formula("((g->f)->(f->g))")
print n.truthtable()

o = propcalc.formula("(~c->~b)")
print o.truthtable()

p = propcalc.formula("(~(h&j)<->(j<->~k))")
print p.truthtable()

q = propcalc.formula("~(d|b)->(c->b)")
print q.truthtable()

s = propcalc.formula("(a->(b->(a->b)))")
print s.truthtable()

t = propcalc.formula("(f|~(g|~h))")
print t.truthtable()

u = propcalc.formula("((g<->f)|(~f|g))")
print u.truthtable()

v = propcalc.formula("(b->c)")
print v.truthtable()

w = propcalc.formula("((h&j)->~k)")
print w.truthtable()

#x = propcalc.formula("(c->(d&b)")
#print x.truthtable()

#y = propcalc.formula("(((d)|~(a&c))->~a)")
#print y.truthtable()

#z = propcalc.formula("(b->(a->(b->a))")
#print z.truthtable()

#aa = propcalc.formula("(h<->~f)|g")
#print aa.truthtable()

#r = propcalc.formula("((a|~(d&c))->(~d)")
#print r.truthtable()
