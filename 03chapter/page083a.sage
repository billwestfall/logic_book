# run as

#sage: load ("page083a.sage")
#e      value
#False  False
#True   False

#a      b      value
#False  False  False
#False  True   True
#True   False  False
#True   True   False

#a      j      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#a      b      c      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   True

#a      h      j      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
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

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#d      h      e      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   False

#e      h      b      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  True
#True   True   True   False

#d      a      b      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   True

#d      e      f      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#j      e      f      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      h      j      value
#False  False  False  True
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   True


f = propcalc.formula("~~(e&~e)")
print f.truthtable()

g = propcalc.formula("(a&b)<->(~b)")
print g.truthtable()

h = propcalc.formula("a<->(j<->(a<->j))")
print h.truthtable()

i = propcalc.formula("(a->(b->c))&((a->b)->c)")
print i.truthtable()

j = propcalc.formula("(~a|(h->j))->(a|j)")
print j.truthtable()

k = propcalc.formula("(~(~a)&~b)->(~a<->b)")
print k.truthtable()

l = propcalc.formula("~(a|b)->(~a|~b)")
print l.truthtable()

m = propcalc.formula("~d&(~h|(d&e))")
print m.truthtable()

n = propcalc.formula("~(e&(h->(b&e)))")
print n.truthtable()

o = propcalc.formula("~(d<->(~a&b)|(~d|~b))")
print o.truthtable()

p = propcalc.formula("~(d&(e|f)<->(~d&(e&f)))")
print p.truthtable()

q = propcalc.formula("((j&(e|f)&(~e&~f))->~j)")
print q.truthtable()

r = propcalc.formula("(a|(~a&(h->j)))->(j->h)")
print r.truthtable()
