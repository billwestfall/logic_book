# run as

#sage: load ("page107b.sage")
#j      m      value
#False  False  True
#False  True   False
#True   False  True
#True   True   True

#True
#b      f      g      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#a      b      value
#False  False  False
#False  True   True
#True   False  True
#True   True   False

#False
#j      m      t      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#a      b      c      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   True

#True

from sage.crypto.boolean_function import BooleanFunction
import sage.logic.booleval as booleval

o = propcalc.formula("(((j|m)->(j&m))&(m<->(m->j)))|(m->j)")
print o.truthtable()
print o.evaluate({'j':True, 'm':True})

o = propcalc.formula("(((b&f)&(~(b&g)))|g)")
print o.truthtable()
print o.evaluate({'b':True, 'f':True, 'g':True})

o = propcalc.formula("(((a->~a)&((b->a)->b)))|(a<->~b)")
print o.truthtable()
print o.evaluate({'a':True, 'b':True})

o = propcalc.formula("(((j|(m->(t<->j))))&((m->j)&(t->m)))|(t&~m)")
print o.truthtable()
print o.evaluate({'j':True, 'm':True, 't':True})

o = propcalc.formula("((a&(~((b&c)<->(c->a))))&(b->~b))|(~c->c)")
print o.truthtable()
print o.evaluate({'a':True, 'b':True, 'c':True})
