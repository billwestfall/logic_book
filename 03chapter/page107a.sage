# run as

#sage: load ("page107a.sage")
#a      h      j      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   False

#False
#b      a      c      value
#False  False  False  True
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   True

#True
#d      g      a      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   False

#False
#y      a      w      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   False

#False
#c      d      e      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  False
#True   True   True   True

#True
#b      d      c      value
#False  False  False  False
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#g      h      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#True
#j      t      y      value
#False  False  False  True
#False  False  True   False
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   False
#True   True   False  False
#True   True   True   True

#True
#f      g      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#True
#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  False
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True

from sage.crypto.boolean_function import BooleanFunction
import sage.logic.booleval as booleval

o = propcalc.formula("(a->(h&j)&(j<->h)&(~j))|(~a)")
print o.truthtable()
print o.evaluate({'a':True, 'h':True, 'j':True})

o = propcalc.formula("((b|(a&~c))&((c->a)<->b)&(~b|a))|(~(a|c))")
print o.truthtable()
print o.evaluate({'a':True, 'b':True, 'c':True})

o = propcalc.formula("(((d<->~g)&g)&((g|((a->d)&a))->~d))|(g->~d)")
print o.truthtable()
print o.evaluate({'a':True, 'd':True, 'g':True})

o = propcalc.formula("(~(y<->a))&~y&~a|(w&~w)")
print o.truthtable()
print o.evaluate({'a':True, 'w':True, 'y':True})

o = propcalc.formula("(((c->d)->(d->e))&d)|(c->e)")
print o.truthtable()
print o.evaluate({'c':True, 'd':True, 'e':True})

o = propcalc.formula("((b|b)&(~b->(~d|~c)&(~d|c)|(~b|c)))|c")
print o.truthtable()
print o.evaluate({'b':True, 'c':True, 'd':True})

o = propcalc.formula("((g<->h)|(~g<->h))|((~g<->~h)|~(g<->h))")
print o.truthtable()
print o.evaluate({'g':True, 'h':True})

o = propcalc.formula("((((j&t)&y)|(~j->~y))&(j->t)&(t->y))|(y<->t)")
print o.truthtable()
print o.evaluate({'j':True, 't':True, 'y':True})

o = propcalc.formula("((~~f->~~g)&(~g->~f)|(g->f))")
print o.truthtable()
print o.evaluate({'f':True, 'g':True})

o = propcalc.formula("(((a&(b|c))<->(a|b))&(b->~b))|(c|a)")
print o.truthtable()
print o.evaluate({'a':True, 'b':True, 'c':True})
