# run as

#sage: load ("page087a.sage")
#j      k      value
#False  False  False
#False  True   False
#True   False  True
#True   True   False

#a      value
#False  True
#True   False

#a      b      value
#False  False  True
#False  True   False
#True   False  False
#True   True   True

#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   False

#a      value
#False  True
#True   True   

f = propcalc.formula("j&(~k|~j)")
print f.truthtable()

g = propcalc.formula("(a&~a)|~a")
print g.truthtable()

h = propcalc.formula("(a->b)<->(b->a)")
print h.truthtable()

i = propcalc.formula("(a->b)->(b->~a)")
print i.truthtable()

j = propcalc.formula("a->a")
print j.truthtable()
