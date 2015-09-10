# run as

#sage: load ("page083c.sage")
#c      value
#False  True
#True   True

#z      x      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#a      value
#False  False
#True   False

#h      k      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#a      value
#False  False
#True   False

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#a      b      value
#False  False  False
#False  True   False
#True   False  True
#True   True   True

#h      value
#False  False
#True   True

#a      value
#False  True
#True   False  

f = propcalc.formula("c|(~c)")
print f.truthtable()

g = propcalc.formula("z->(x|z)")
print g.truthtable()

h = propcalc.formula("a&(~a)")
print h.truthtable()

i = propcalc.formula("(h|k)->~(h|k)&h")
print i.truthtable()

j = propcalc.formula("~(a|(~a))")
print j.truthtable()

k = propcalc.formula("(a)->(b->a)")
print k.truthtable()

l = propcalc.formula("(a->b)->a")
print l.truthtable()

m = propcalc.formula("h")
print m.truthtable()

n = propcalc.formula("(a&(~a))|(~a)")
print n.truthtable()
