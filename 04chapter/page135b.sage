# run as

# sage: load ("page135b.sage")
# (((~(a->~b))->(b->a))&(~(~a->~b)))
# ['&', ['->', ['~', ['->', 'a', ['~', 'b', None]], None], ['->', 'b', 'a']], ['~', ['->', ['~', 'a', None], ['~', 'b', None]], None]]
# Consistent?:
# True
# (((a&~c)|(a&~b))&(a->b)&(c))
# ['&', ['&', ['|', ['&', 'a', ['~', 'c', None]], ['&', 'a', ['~', 'b', None]]], ['->', 'a', 'b']], 'c']
# Consistent?:
# False
# ((j->k)&(k->j)&(~(j<->k)))
# ['&', ['&', ['->', 'j', 'k'], ['->', 'k', 'j']], ['~', ['<->', 'j', 'k'], None]]
# Consistent?:
# False
# ((~(a->(b<->c)))&(a<->~c)&(a<->b))
# ['&', ['&', ['~', ['->', 'a', ['<->', 'b', 'c']], None], ['<->', 'a', ['~', 'c', None]]], ['<->', 'a', 'b']]
# Consistent?:
# True
# ((~(a&~b)->~a)&((~(~a&b))->(~b))&(b&~a))
# ['&', ['&', ['->', ['~', ['&', 'a', ['~', 'b', None]], None], ['~', 'a', None]], ['->', ['~', ['&', ['~', 'a', None], 'b'], None], ['~', 'b', None]]], ['&', 'b', ['~', 'a', None]]]
# Consistent?:
# True
# (((~(a|b))->(~a))&((~(a|b))->(~b))&a)
# ['&', ['&', ['->', ['~', ['|', 'a', 'b'], None], ['~', 'a', None]], ['->', ['~', ['|', 'a', 'b'], None], ['~', 'b', None]]], 'a']
# Consistent?:
# True
# ((~(a|b)->a)&((~(a|b))->b)&(~b))
# ['&', ['&', ['->', ['~', ['|', 'a', 'b'], None], 'a'], ['->', ['~', ['|', 'a', 'b'], None], 'b']], ['~', 'b', None]]
# Consistent?:
# True
# ((a<->(b&~c))&(~a|~b)&(~(~b<->c)))
# ['&', ['&', ['<->', 'a', ['&', 'b', ['~', 'c', None]]], ['|', ['~', 'a', None], ['~', 'b', None]]], ['~', ['<->', ['~', 'b', None], 'c'], None]]
# Consistent?:
# True
# ((a<->(b&~c))&(~a|~b)&(b->(~c)))
# ['&', ['&', ['<->', 'a', ['&', 'b', ['~', 'c', None]]], ['|', ['~', 'a', None], ['~', 'b', None]]], ['->', 'b', ['~', 'c', None]]]
# Consistent?:
# True
# ((a<->(~b<->c))&(~a->(b->~c))&(~(a->~c)))
# ['&', ['&', ['<->', 'a', ['<->', ['~', 'b', None], 'c']], ['->', ['~', 'a', None], ['->', 'b', ['~', 'c', None]]]], ['~', ['->', 'a', ['~', 'c', None]], None]]
# Consistent?:
# True
# ((~(a->(b<->c)))&(a<->(~c))&(a<->b))
# ['&', ['&', ['~', ['->', 'a', ['<->', 'b', 'c']], None], ['<->', 'a', ['~', 'c', None]]], ['<->', 'a', 'b']]
# Consistent?:
# True
# ((j->(h<->~i))&(~(j<->h)))
# ['&', ['->', 'j', ['<->', 'h', ['~', 'i', None]]], ['~', ['<->', 'j', 'h'], None]]
# Consistent?:
# True
# (((a&~b)<->(c&~e))&(~a<->e)&(b<->c))
# ['&', ['&', ['<->', ['&', 'a', ['~', 'b', None]], ['&', 'c', ['~', 'e', None]]], ['<->', ['~', 'a', None], 'e']], ['<->', 'b', 'c']]
# Consistent?:
# True

import sage.logic.propcalc as propcalc
import sage.logic.logicparser as logicparser

f = propcalc.formula("(((~(a->~b))->(b->a))&(~(~a->~b)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a&~c)|(a&~b))&(a->b)&(c))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((j->k)&(k->j)&(~(j<->k)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a->(b<->c)))&(a<->~c)&(a<->b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a&~b)->~a)&((~(~a&b))->(~b))&(b&~a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((~(a|b))->(~a))&((~(a|b))->(~b))&a)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a|b)->a)&((~(a|b))->b)&(~b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a<->(b&~c))&(~a|~b)&(~(~b<->c)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a<->(b&~c))&(~a|~b)&(b->(~c)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a<->(~b<->c))&(~a->(b->~c))&(~(a->~c)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a->(b<->c)))&(a<->(~c))&(a<->b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((j->(h<->~i))&(~(j<->h)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a&~b)<->(c&~e))&(~a<->e)&(b<->c))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
