# sage: load ("page228b.sage")
# (((e&f)|~~g)->m)&(~(((g|e)&(f|g))->(m&m)))
# e      f      g      m      value
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
# (~((~c|~~c)|~~c))
# c      value
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
# ((m&l)&((l&(m&~s))->k)&(~k|s)&~(k<->~s))
# m      l      s      k      value
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
# True   True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# (b&(h|z))&(~z->k)&((b<->z)->~z)&(~k)
# b      h      z      k      value
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
# (~(w&(z|y)))&((z->y)->z)&((y->z)->w)
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
# (((f->g)|(~f->g))->h)&((a&h)->~a)&(a|~h)
# f      g      h      a      value
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


f = propcalc.formula("(((e&f)|~~g)->m)&(~(((g|e)&(f|g))->(m&m)))")
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

f = propcalc.formula("(~((~c|~~c)|~~c))")
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

f = propcalc.formula("((m&l)&((l&(m&~s))->k)&(~k|s)&~(k<->~s))")
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

f = propcalc.formula("(b&(h|z))&(~z->k)&((b<->z)->~z)&(~k)")
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

f = propcalc.formula("(~(w&(z|y)))&((z->y)->z)&((y->z)->w)")
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

f = propcalc.formula("(((f->g)|(~f->g))->h)&((a&h)->~a)&(a|~h)")
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
