# run as

#sage: load ("page109a.sage")
#b      c      value
#False  False  False
#False  True   True
#True   False  True
#True   True   True

#True
#k      l      j      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  True
#True   True   True   True

#True
#j      t      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#True
#a      c      h      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   False

#False
#b      c      d      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#b      c      d      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  True
#True   True   True   True

#True

from sage.crypto.boolean_function import BooleanFunction
import sage.logic.booleval as booleval

o = propcalc.formula("((b&c)|(b|c))")
print o.truthtable()
print o.evaluate({'b':True, 'c':True})

o = propcalc.formula("(((k<->l)&(l->j)&(~j))|(~k|l))")
print o.truthtable()
print o.evaluate({'j':True, 'k':True, 'l':True})

o = propcalc.formula("(((j->t)->j)&((t->j)->t))|(~j|~t)")
print o.truthtable()
print o.evaluate({'j':True, 't':True})

o = propcalc.formula("(((a|c)&~h)|~c)")
print o.truthtable()
print o.evaluate({'a':True, 'c':True, 'h':True})

o = propcalc.formula("(((b&c)&(b|d))|d)")
print o.truthtable()
print o.evaluate({'b':True, 'c':True, 'd':True})

o = propcalc.formula("(((b&c)&(b|d))|d)")
print o.truthtable()
print o.evaluate({'b':True, 'c':True, 'd':True})

o = propcalc.formula("((~(a|~(b|~c)))&(b->(a->c)))|(~a<->~b)")
print o.truthtable()
print o.evaluate({'a':True, 'b':True, 'c':True})
