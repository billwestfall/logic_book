# run as

# sage: load ("page150a.sage")
# (((((w&y)->h))<->(w->(y->h))))
# w      y      h      value
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
# (((w&y)->h))
# ((w->(y->h)))
# Equivalent?:
# True
# ((~(e|h))<->((h|j)|e))
# e      h      j      value
# False  False  False  False
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
# ((~(e|h)))
# (((h|j)|e))
# Equivalent?:
# False

f = propcalc.formula("(((((w&y)->h))<->(w->(y->h))))")
g = propcalc.formula("(((w&y)->h))")
h = propcalc.formula("((w->(y->h)))")
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
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((~(e|h))<->((h|j)|e))")
g = propcalc.formula("((~(e|h)))")
h = propcalc.formula("(((h|j)|e))")
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
print g
print h
print ("Equivalent?:")
print g == h
