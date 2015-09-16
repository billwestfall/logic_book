# run as

# sage: load ("page149a.sage")
# ((~(~a->a)))
# a      value
# False  True
# True   False
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((j->(k->l)))
# j      k      l      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  False
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((a<->~a)->(~(a<->~a)))
# a      value
# False  True
# True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# (((e<->h)->(~e->~h)))
# e      h      value
# False  False  True
# False  True   True
# True   False  True
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# (((~b&~d)|(~(b|d))))
# b      d      value
# False  False  True
# False  True   False
# True   False  False
# True   True   False
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# (((((c->d)&((d->e)))&c)&(~e)))
# c      d      e      value
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
# (((a|b)&(a|c))->(~b&c))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   False
# True   False  False  False
# True   False  True   True
# True   True   False  False
# True   True   True   False
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((~((a|b)&(b|c)))&(~a&~b))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  False
# False  True   True   False
# True   False  False  False
# True   False  True   False
# True   True   False  False
# True   True   True   False
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# (((j|~k)<->(~(~(k->j)))))
# j      k      value
# False  False  True
# False  True   True
# True   False  True
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# ((~b)->((b|d)->d))
# b      d      value
# False  False  True
# False  True   True
# True   False  True
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True

f = propcalc.formula("((~(~a->a)))")
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

f = propcalc.formula("((j->(k->l)))")
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

f = propcalc.formula("((a<->~a)->(~(a<->~a)))")
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

f = propcalc.formula("(((e<->h)->(~e->~h)))")
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

f = propcalc.formula("(((~b&~d)|(~(b|d))))")
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

f = propcalc.formula("(((((c->d)&((d->e)))&c)&(~e)))")
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

f = propcalc.formula("(((a|b)&(a|c))->(~b&c))")
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

f = propcalc.formula("((~((a|b)&(b|c)))&(~a&~b))")
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

f = propcalc.formula("(((j|~k)<->(~(~(k->j)))))")
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

f = propcalc.formula("((~b)->((b|d)->d))")
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
