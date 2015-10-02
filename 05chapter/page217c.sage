# sage: load ("page217c.sage")
# (((a->b)&(a->~b))&((c->a)&(~c->a)))
# a      b      c      value
# False  False  False  False
# False  False  True   False
# False  True   False  False
# False  True   True   False
# True   False  False  False
# True   False  True   False
# True   True   False  False
# True   True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# ((b<->(a&~a))&(~b->(a&~a)))
# b      a      value
# False  False  False
# False  True   False
# True   False  False
# True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# ((w|(z->y))&(~y&~(w|~z)))
# w      z      y      value
# False  False  False  False
# False  False  True   False
# False  True   False  False
# False  True   True   False
# True   False  False  False
# True   False  True   False
# True   True   False  False
# True   True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# ((a&(b|c))&((~c|h)&(h->~h))&(~b))
# a      b      c      h      value
# False  False  False  False  False
# False  False  False  True   False
# False  False  True   False  False
# False  False  True   True   False
# False  True   False  False  False
# False  True   False  True   False
# False  True   True   False  False
# False  True   True   True   False
# True   False  False  False  False
# True   False  False  True   False
# True   False  True   False  False
# True   False  True   True   False
# True   True   False  False  False
# True   True   False  True   False
# True   True   True   False  False
# True   True   True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# (((a<->b)<->(d&~d))<->b)&a
# a      b      d      value
# False  False  False  False
# False  False  True   False
# False  True   False  False
# False  True   True   False
# True   False  False  False
# True   False  True   False
# True   True   False  False
# True   True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False


f = propcalc.formula("(((a->b)&(a->~b))&((c->a)&(~c->a)))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((b<->(a&~a))&(~b->(a&~a)))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((w|(z->y))&(~y&~(w|~z)))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&(b|c))&((~c|h)&(h->~h))&(~b))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a<->b)<->(d&~d))<->b)&a")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
