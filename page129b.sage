# run as

# sage: load ("page129b.sage")
# (p|q)
# ['|', 'p', 'q']
# Consistent?:
# True
# (p->q)
# ['->', 'p', 'q']
# Consistent?:
# True
# (~(p->q))
# ['~', ['->', 'p', 'q'], None]
# Consistent?:
# True
# (p<->q)
# ['<->', 'p', 'q']
# Consistent?:
# True
# (~(p<->q))
# ['~', ['<->', 'p', 'q'], None]
# Consistent?:
# True
# ((a->b)&(b->a)&~a)
# ['&', ['&', ['->', 'a', 'b'], ['->', 'b', 'a']], ['~', 'a', None]]
# Consistent?:
# True
# ((~(a->b))&(b->a))
# ['&', ['~', ['->', 'a', 'b'], None], ['->', 'b', 'a']]
# Consistent?:
# True
# ((h<->g)&(g<->i)&h&(~i))
# ['&', ['&', ['&', ['<->', 'h', 'g'], ['<->', 'g', 'i']], 'h'], ['~', 'i', None]]
# Consistent?:
# False
# ((~(h<->i))&(i<->j))
# ['&', ['~', ['<->', 'h', 'i'], None], ['<->', 'i', 'j']]
# Consistent?:
# True
# ((a->(b<->c))&(~(c<->a)))
# ['&', ['->', 'a', ['<->', 'b', 'c']], ['~', ['<->', 'c', 'a'], None]]
# Consistent?:
# True

import sage.logic.propcalc as propcalc
import sage.logic.logicparser as logicparser

f = propcalc.formula("(p|q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(p->q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(~(p->q))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(p<->q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(~(p<->q))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a->b)&(b->a)&~a)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a->b))&(b->a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)&(g<->i)&h&(~i))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(h<->i))&(i<->j))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a->(b<->c))&(~(c<->a)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
