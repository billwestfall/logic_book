# run as

# sage: load ("page148a.sage")
# (m&~m)
# m      value
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
# (m|~m)
# m      value
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
# ~(m|~m)
# m      value
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
# (~m|~m)
# m      value
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
# ((c->r)->(~r->(~(c&j))))
# c      r      j      value
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
# ((c->r)&((c->~r)&(~(~c|r))))
# c      r      value
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
# ((k<->w)|(a&w))
# k      w      a      value
# False  False  False  True
# False  False  True   True
# False  True   False  False
# False  True   True   True
# True   False  False  False
# True   False  True   False
# True   True   False  True
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
# ((~a<->~z)&(a&~z))
# a      z      value
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
# ((l|(j|~k))&(k&((j|l)->~k)))
# l      j      k      value
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
# ((a|b)&(~(a|b)))
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
# ((a|b)->(~(a|b)))
# a      b      value
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
# ((a|b)<->(~(a|b)))
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
# ((~(d|f))<->(~(d&f)))
# d      f      value
# False  False  True
# False  True   False
# True   False  False
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((~(d|f))<->((~d|~f)))
# d      f      value
# False  False  True
# False  True   False
# True   False  False
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((~(d|f))<->((~d&~f)))
# d      f      value
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
# (~((~(d|f))<->((~d&~f))))
# d      f      value
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

f = propcalc.formula("(m&~m)")
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

f = propcalc.formula("(m|~m)")
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

f = propcalc.formula("~(m|~m)")
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

f = propcalc.formula("(~m|~m)")
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

f = propcalc.formula("((c->r)->(~r->(~(c&j))))")
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

f = propcalc.formula("((c->r)&((c->~r)&(~(~c|r))))")
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

f = propcalc.formula("((k<->w)|(a&w))")
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

f = propcalc.formula("((~a<->~z)&(a&~z))")
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

f = propcalc.formula("((l|(j|~k))&(k&((j|l)->~k)))")
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

f = propcalc.formula("((a|b)&(~(a|b)))")
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

f = propcalc.formula("((a|b)->(~(a|b)))")
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

f = propcalc.formula("((a|b)<->(~(a|b)))")
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

f = propcalc.formula("((~(d|f))<->(~(d&f)))")
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

f = propcalc.formula("((~(d|f))<->((~d|~f)))")
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

f = propcalc.formula("((~(d|f))<->((~d&~f)))")
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

f = propcalc.formula("(~((~(d|f))<->((~d&~f))))")
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
