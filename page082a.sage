# run as

#sage: load ("page082a.sage")
#a      value
#False  True
#True   False

#d      b      g      h      a      value
#False  False  False  False  False  True
#False  False  False  False  True   True
#False  False  False  True   False  True
#False  False  False  True   True   True
#False  False  True   False  False  True
#False  False  True   False  True   True
#False  False  True   True   False  True
#False  False  True   True   True   True
#False  True   False  False  False  True
#False  True   False  False  True   True
#False  True   False  True   False  True
#False  True   False  True   True   True
#False  True   True   False  False  True
#False  True   True   False  True   True
#False  True   True   True   False  True
#False  True   True   True   True   True
#True   False  False  False  False  True
#True   False  False  False  True   True
#True   False  False  True   False  True
#True   False  False  True   True   True
#True   False  True   False  False  True
#True   False  True   False  True   True
#True   False  True   True   False  True
#True   False  True   True   True   True
#True   True   False  False  False  True
#True   True   False  False  True   True
#True   True   False  True   False  True
#True   True   False  True   True   True
#True   True   True   False  False  True
#True   True   True   False  True   True
#True   True   True   True   False  True
#True   True   True   True   True   True

#b      c      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

f = propcalc.formula("a<->(~a<->a)")
print f.truthtable()

g = propcalc.formula("(~d&(b|g))->((h&a)|~d)")
print g.truthtable()

h = propcalc.formula("(b&c)->(b|(c&~c))")
print h.truthtable()
