# run as

#sage: load ("page093a.sage")
#b      d      value
#False  False  False
#False  True   False
#True   False  False
#True   True   False

#b      h      value
#False  False  True
#False  True   True
#True   False  False
#True   True   False

#a      b      value
#False  False  False
#False  True   True
#True   False  False
#True   True   True

#f      g      c      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   False

#c      d      value
#False  False  True
#False  True   True
#True   False  False
#True   True   False

#a      f      b      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   False  

f = propcalc.formula("((b<->d)&(b<->~d))")
print f.truthtable()

g = propcalc.formula("(b->h)&(b->~h)")
print g.truthtable()

h = propcalc.formula("(a<->(b<->a))")
print h.truthtable()

i = propcalc.formula("((f&g)->(c&~c))&f")
print i.truthtable()

j = propcalc.formula("((c|d)<->c)->~c")
print j.truthtable()

k = propcalc.formula("(~(a&f)->(b|a))&~(~b->~(f|a))")
print k.truthtable()
