# run as

#sage: load ("page101a.sage")
#((a&((b&c))|b)&(~(boolean<->algebra)))->(a&((b&c))|b)
#a      b      c      value
#False  False  False  False
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   False
#True   True   False  True
#True   True   True   True

#True
#((((w|j)&((w->z)|(j->z))&~z)|~(w&j))&(~(boolean<->algebra)))->(((w|j)&((w->z)|(j->z))&~z)|~(w&j))
#w      j      z      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  False
#True   True   True   False

#False
#(((k|j)&(~(k|j))|k)&(~(boolean<->algebra)))->((k|j)&(~(k|j))|k)
#k      j      value
#False  False  False
#False  True   False
#True   False  True
#True   True   True

#True
#((a&(b|c)|b)&(~(boolean<->algebra)))->(a&(b|c)|b)
#a      b      c      value
#False  False  False  False
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#((((f<->g)&(f|g))|(f&g))&(~(boolean<->algebra)))->(((f<->g)&(f|g))|(f&g))
#f      g      value
#False  False  False
#False  True   False
#True   False  False
#True   True   True

#True
#(((((a&g)|(b->g))&(~g|b))|(~b|g))&(~(boolean<->algebra)))->((((a&g)|(b->g))&(~g|b))|(~b|g))
#a      g      b      value
#False  False  False  True
#False  False  True   False
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   False
#True   True   False  True
#True   True   True   True

#True
#((((d<->(~w|g))&(g<->~d))|(~d))&(~(boolean<->algebra)))->(((d<->(~w|g))&(g<->~d))|(~d))
#d      w      g      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   False
#True   True   False  False
#True   True   True   False

#False
#((((~(b|d))&(~h))|(b))&(~(boolean<->algebra)))->(((~(b|d))&(~h))|(b))
#b      d      h      value
#False  False  False  True
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   True

#True
#((((a&(a->b))->b))&(~(boolean<->algebra)))->(((a&(a->b))->b))
#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

#True
#((((~a<->~b)&(b|a))->~a)&(~(boolean<->algebra)))->(((~a<->~b)&(b|a))->~a)
#a      b      value
#False  False  True
#False  True   True
#True   False  True
#True   True   False

#False

from sage.crypto.boolean_function import BooleanFunction
import sage.logic.booleval as booleval

f = propcalc.formula("a&((b&c))|b")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'a':True, 'b':True, 'c':True})

f = propcalc.formula("((w|j)&((w->z)|(j->z))&~z)|~(w&j)")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'w':True, 'j':True, 'z':True})

f = propcalc.formula("(k|j)&(~(k|j))|k")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'j':True, 'k':True})

f = propcalc.formula("a&(b|c)|b")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'a':True, 'b':True, 'c':True})

f = propcalc.formula("((f<->g)&(f|g))|(f&g)")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'f':True, 'g':True})

f = propcalc.formula("(((a&g)|(b->g))&(~g|b))|(~b|g)")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'a':True, 'b':True, 'g':True})

f = propcalc.formula("((d<->(~w|g))&(g<->~d))|(~d)")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'d':True, 'g':True, 'w':True})

f = propcalc.formula("((~(b|d))&(~h))|(b)")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'b':False, 'd':False, 'h':False})

f = propcalc.formula("((a&(a->b))->b)")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'a':True, 'b':True})

f = propcalc.formula("((~a<->~b)&(b|a))->~a")
g = propcalc.formula("boolean<->algebra")
print (f&~g).ifthen(f)
print f.truthtable()
print f.evaluate({'a':True, 'b':True})
