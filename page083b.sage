# run as

#sage: load ("page083b.sage")
#a      c      b      value
#False  False  False  False
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
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   False

#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   True

#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   True

#a      b      c      value
#False  False  False  True
#False  False  True   False
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#b      a      c      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   True

f = propcalc.formula("~(~a|(~c|~b))")
print f.truthtable()

g = propcalc.formula("~((a)|(~c&~b))")
print g.truthtable()

h = propcalc.formula("(a->b)|(b->c)")
print h.truthtable()

i = propcalc.formula("(a->b)->(b->c)")
print i.truthtable()

j = propcalc.formula("(a<->b)|(b<->c)")
print j.truthtable()

k = propcalc.formula("(~a)->(b<->c)")
print k.truthtable()

l = propcalc.formula("~((b)->(a|c)&((~b)))")
print l.truthtable()

m = propcalc.formula("~(~a<->(~(b<->~(a<->(b&c)))))")
print m.truthtable()

#n = propcalc.formula("~((((~a)<->(~b))<->(~a))<->(b|c)")
#print n.truthtable()

#o = propcalc.formula("~((b->(~a))&(c<->(a&b)))")
#print o.truthtable()
