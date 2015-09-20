# run as

# sage: load ("page141a.sage")
# ((h|g)&(~g&~h))
# ['&', ['|', 'h', 'g'], ['&', ['~', 'g', None], ['~', 'h', None]]]
# Consistent?:
# False
# ((k|(m&~m))&(j&~c))
# ['&', ['|', 'k', ['&', 'm', ['~', 'm', None]]], ['&', 'j', ['~', 'c', None]]]
# Consistent?:
# True
# ((~(~c))&(c&(u|(~c&b))))
# ['&', ['~', ['~', 'c', None], None], ['&', 'c', ['|', 'u', ['&', ['~', 'c', None], 'b']]]]
# Consistent?:
# True
# ((~(m&~n))&((~(k|m))&~(~m))&(~(~(~k))))
# ['&', ['&', ['~', ['&', 'm', ['~', 'n', None]], None], ['&', ['~', ['|', 'k', 'm'], None], ['~', ['~', 'm', None], None]]], ['~', ['~', ['~', 'k', None], None], None]]
# Consistent?:
# False
# (((~(~(e|~c))&a))&(~(e|~c))&a)
# ['&', ['&', ['&', ['~', ['~', ['|', 'e', ['~', 'c', None]], None], None], 'a'], ['~', ['|', 'e', ['~', 'c', None]], None]], 'a']
# Consistent?:
# False
# ((~(~(l|~l)&(n|~n))))
# ['~', ['&', ['~', ['|', 'l', ['~', 'l', None]], None], ['|', 'n', ['~', 'n', None]]], None]
# Consistent?:
# True
# ((~a|(~(~(~(k&~a)|r))))&(~(d|(a&~k)))&(a&(r|k)))
# ['&', ['&', ['|', ['~', 'a', None], ['~', ['~', ['|', ['~', ['&', 'k', ['~', 'a', None]], None], 'r'], None], None]], ['~', ['|', 'd', ['&', 'a', ['~', 'k', None]]], None]], ['&', 'a', ['|', 'r', 'k']]]
# Consistent?:
# True
# (((~(~(j->m))))<->(j&~m))
# ['<->', ['~', ['~', ['->', 'j', 'm'], None], None], ['&', 'j', ['~', 'm', None]]]
# Consistent?:
# False
# ((b->j)&(h<->j)&(~h|b))
# ['&', ['&', ['->', 'b', 'j'], ['<->', 'h', 'j']], ['|', ['~', 'h', None], 'b']]
# Consistent?:
# True
# ((h&(~k->m))&(~k)&(~(h->m)))
# ['&', ['&', ['&', 'h', ['->', ['~', 'k', None], 'm']], ['~', 'k', None]], ['~', ['->', 'h', 'm'], None]]
# Consistent?:
# False
# ((~((b&j)<->(~(w|z))))&(~(j&w)))
# ['&', ['~', ['<->', ['&', 'b', 'j'], ['~', ['|', 'w', 'z'], None]], None], ['~', ['&', 'j', 'w'], None]]
# Consistent?:
# True
# ((~~~((k|m)->~g))&(g<->(j&u))&(u->(~g&k))&(k&~u))
# ['&', ['&', ['&', ['~', ['->', ['|', 'k', 'm'], ['~', 'g', None]], None], ['<->', 'g', ['&', 'j', 'u']]], ['->', 'u', ['&', ['~', 'g', None], 'k']]], ['&', 'k', ['~', 'u', None]]]
# Consistent?:
# False

f = propcalc.formula("((h|g)&(~g&~h))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((k|(m&~m))&(j&~c))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(~c))&(c&(u|(~c&b))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(m&~n))&((~(k|m))&~(~m))&(~(~(~k))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((~(~(e|~c))&a))&(~(e|~c))&a)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(~(l|~l)&(n|~n))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~a|(~(~(~(k&~a)|r))))&(~(d|(a&~k)))&(a&(r|k)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((~(~(j->m))))<->(j&~m))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((b->j)&(h<->j)&(~h|b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h&(~k->m))&(~k)&(~(h->m)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~((b&j)<->(~(w|z))))&(~(j&w)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~~~((k|m)->~g))&(g<->(j&u))&(u->(~g&k))&(k&~u))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
