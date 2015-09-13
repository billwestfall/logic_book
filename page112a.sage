# run as

import sage.logic.propcalc as propcalc

#f = propcalc.formula("a|b")
#print f
#print f.is_satisfiable()
#f = f & ~f
#print f
#print f.is_satisfiable()
#print f.is_contradiction()
#f = f | ~f
#print f
#print f.is_tautology()

f = propcalc.formula("(~((a|b)<->(~a->b)))")
print f
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Contradiction?:")
print f.is_contradiction()
print ("Tautology?:")
print f.is_tautology()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a->d)&h)&(f|h))|(~d)")
print f
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Contradiction?:")
print f.is_contradiction()
print ("Tautology?:")
print f.is_tautology()
print ("Consistent?:")
print propcalc.consistent(f)
