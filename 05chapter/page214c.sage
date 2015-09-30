# run as

# sage: load ("page214c.sage")
# (a<->~(a<->a))&(a)
# a      value
# False  False
# True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# (p->~p)&(~p->p)
# p      value
# False  False
# True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# (m->(k->b))&(~k->~m)&((l&m)&~b)
# m      k      b      l      value
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
# ((e|f)->(g&~i))&((g|f)->i)&(~f->e)
# e      f      g      i      value
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
# (~(y<->a))&(~y)&(~a)
# y      a      value
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
# (f->~g)&(~f->~h)&((~f|g)&h)
# f      g      h      value
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
# ((~c->~d)&(c->d))&(d->~c)&(~(b&~d))&(b<->(~c|d))
# c      d      b      value
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


f = propcalc.formula("(a<->~(a<->a))&(a)")
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

f = propcalc.formula("(p->~p)&(~p->p)")
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

f = propcalc.formula("(m->(k->b))&(~k->~m)&((l&m)&~b)")
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

f = propcalc.formula("((e|f)->(g&~i))&((g|f)->i)&(~f->e)")
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

f = propcalc.formula("(~(y<->a))&(~y)&(~a)")
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

f = propcalc.formula("(f->~g)&(~f->~h)&((~f|g)&h)")
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

f = propcalc.formula("((~c->~d)&(c->d))&(d->~c)&(~(b&~d))&(b<->(~c|d))")
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
