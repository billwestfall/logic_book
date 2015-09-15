# run as

# sage: load ("page135a.sage")
# (~(a->b)&(b->a))
# ['&', ['~', ['->', 'a', 'b'], None], ['->', 'b', 'a']]
# Consistent?:
# True
# ((~(~a->(b->c)))&(a->c))
# ['&', ['~', ['->', ['~', 'a', None], ['->', 'b', 'c']], None], ['->', 'a', 'c']]
# Consistent?:
# True
# ((b->(d->e))&(d&b))
# ['&', ['->', 'b', ['->', 'd', 'e']], ['&', 'd', 'b']]
# Consistent?:
# True
# ((h<->g)&(~h)&(g))
# ['&', ['&', ['<->', 'h', 'g'], ['~', 'h', None]], 'g']
# Consistent?:
# False
# ((h<->g)&(~g))
# ['&', ['<->', 'h', 'g'], ['~', 'g', None]]
# Consistent?:
# True
# ((h<->g)<->(~h))
# ['<->', ['<->', 'h', 'g'], ['~', 'h', None]]
# Consistent?:
# True
# ((h<->g)<->(~(h->g)))
# ['<->', ['<->', 'h', 'g'], ['~', ['->', 'h', 'g'], None]]
# Consistent?:
# True
# ((h<->g)&(h->g))
# ['&', ['<->', 'h', 'g'], ['->', 'h', 'g']]
# Consistent?:
# True
# ((h<->g)&(g<->i)&(~(h->j)))
# ['&', ['&', ['<->', 'h', 'g'], ['<->', 'g', 'i']], ['~', ['->', 'h', 'j'], None]]
# Consistent?:
# True
# ((a->(~(a<->b)))&((~(a->b))))
# ['&', ['->', 'a', ['~', ['<->', 'a', 'b'], None]], ['~', ['->', 'a', 'b'], None]]
# Consistent?:
# True
# ((l<->(j&k))&(~j)&(~l->l))
# ['&', ['&', ['<->', 'l', ['&', 'j', 'k']], ['~', 'j', None]], ['->', ['~', 'l', None], 'l']]
# Consistent?:
# False
# ((b<->d)&(b<->~d))
# ['&', ['<->', 'b', 'd'], ['<->', 'b', ['~', 'd', None]]]
# Consistent?:
# False
# ((~(a<->(b<->a))))
# ['~', ['<->', 'a', ['<->', 'b', 'a']], None]
# Consistent?:
# True
# ((b->(a|c))&(~(b))&(a<->~b))
# ['&', ['&', ['->', 'b', ['|', 'a', 'c']], ['~', 'b', None]], ['<->', 'a', ['~', 'b', None]]]
# Consistent?:
# True
# ((h->k)&(j->k)&(k->~h))
# ['&', ['&', ['->', 'h', 'k'], ['->', 'j', 'k']], ['->', 'k', ['~', 'h', None]]]
# Consistent?:
# True
# ((a->(b->(c->a)))&(~(b->~a)))
# ['&', ['->', 'a', ['->', 'b', ['->', 'c', 'a']]], ['~', ['->', 'b', ['~', 'a', None]], None]]
# Consistent?:
# True

import sage.logic.propcalc as propcalc
import sage.logic.logicparser as logicparser

f = propcalc.formula("(~(a->b)&(b->a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(~a->(b->c)))&(a->c))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((b->(d->e))&(d&b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)&(~h)&(g))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)&(~g))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)<->(~h))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)<->(~(h->g)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)&(h->g))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h<->g)&(g<->i)&(~(h->j)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a->(~(a<->b)))&((~(a->b))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((l<->(j&k))&(~j)&(~l->l))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((b<->d)&(b<->~d))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a<->(b<->a))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((b->(a|c))&(~(b))&(a<->~b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h->k)&(j->k)&(k->~h))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a->(b->(c->a)))&(~(b->~a)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
