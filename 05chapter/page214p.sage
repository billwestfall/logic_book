# run as

# sage: load ("page214p.sage")
# (a->(b&~b))&a
# a      b      value
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
# (~g&y)&(y->g)
# g      y      value
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
# (z<->w)&(z)&(w->~z)
# z      w      value
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
# (p->(a&y))&(y->(~a&p))&(p|y)
# p      a      y      value
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
# (~~~d->d)&(~d)
# d      value
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


f = propcalc.formula("(a->(b&~b))&a")
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

f = propcalc.formula("(~g&y)&(y->g)")
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

f = propcalc.formula("(z<->w)&(z)&(w->~z)")
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

f = propcalc.formula("(p->(a&y))&(y->(~a&p))&(p|y)")
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

f = propcalc.formula("(~~~d->d)&(~d)")
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
