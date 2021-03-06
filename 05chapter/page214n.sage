# run as

# sage: load ("page214n.sage")
# (a&~a)->~b
# a      b      value
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
# (a|b)->(b|a)
# a      b      value
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
# a->(b->(a&b))
# a      b      value
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
# (a<->b)->(b->a)
# a      b      value
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
# a->(a|(b&c))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True

f = propcalc.formula("(a&~a)->~b")
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

f = propcalc.formula("(a|b)->(b|a)")
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

f = propcalc.formula("a->(b->(a&b))")
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

f = propcalc.formula("(a<->b)->(b->a)")
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

f = propcalc.formula("a->(a|(b&c))")
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
