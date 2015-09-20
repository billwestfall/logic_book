# run as

#sage: load ("page050a.sage")
#l      value
#False  True
#True   True

#m      c      value
#False  False  True
#False  True   True
#True   False  False
#True   True   True

#a      h      value
#False  False  True
#False  True   False
#True   False  False
#True   True   True

#c      b      value
#False  False  False
#False  True   False
#True   False  True
#True   True   False

#b      c      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#a      b      c      value
#False  False  False  True
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   True

#a      c      b      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      c      b      value
#False  False  False  False
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#c      a      b      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  True
#True   True   True   False

#b      l      a      value
#False  False  False  True
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  False
#True   True   True   False

#c      value
#False  False
#True   False

#a      c      b      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   False
#True   True   False  False
#True   True   True   True

#l      b      value
#False  False  False
#False  True   True
#True   False  False
#True   True   True

#h      a      value
#False  False  False
#False  True   False
#True   False  True
#True   True   False

#a      b      c      value
#False  False  False  True
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#c      a      b      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   True

#a      b      l      value
#False  False  False  False
#False  False  True   True
#False  True   False  True
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   False

#h      a      l      b      value
#False  False  False  False  False
#False  False  False  True   True
#False  False  True   False  True
#False  False  True   True   True
#False  True   False  False  False
#False  True   False  True   True
#False  True   True   False  True
#False  True   True   True   True
#True   False  False  False  True
#True   False  False  True   True
#True   False  True   False  True
#True   False  True   True   True
#True   True   False  False  False
#True   True   False  True   True
#True   True   True   False  True
#True   True   True   True   True

f = propcalc.formula("l|~(l)")
print f.truthtable()

g = propcalc.formula("(m->c)")
print g.truthtable()

h = propcalc.formula("a<->h")
print h.truthtable()

i = propcalc.formula("c&(~b)")
print i.truthtable()

j = propcalc.formula("~b&~c")
print j.truthtable()

k = propcalc.formula("(a|(b|c))->(a&(b&c))")
print k.truthtable()

l = propcalc.formula("(~a|~c)->b")
print l.truthtable()

m = propcalc.formula("~(a|c)->b")
print m.truthtable()

n = propcalc.formula("c->(a&~b)")
print n.truthtable()

o = propcalc.formula("b<->(~l&a)")
print o.truthtable()

p = propcalc.formula("c&~c")
print p.truthtable()

q = propcalc.formula("a&(c<->b)")
print q.truthtable()

r = propcalc.formula("(l->l)&b")
print r.truthtable()

s = propcalc.formula("~(~h)&~a")
print s.truthtable()

t = propcalc.formula("~a->(~b->~c)")
print t.truthtable()

u = propcalc.formula("(c->a)&(a->b)")
print u.truthtable()

v = propcalc.formula("~a&(b<->~l)")
print v.truthtable()

w = propcalc.formula("(h->a)->(~l->b)")
print w.truthtable()
