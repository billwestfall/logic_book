# run as

# sage: load ("page136a.sage")
# ((a->(b&~c))&(~(c|a))&(c<->(~a)))
# ['&', ['&', ['->', 'a', ['&', 'b', ['~', 'c', None]]], ['~', ['|', 'c', 'a'], None]], ['<->', 'c', ['~', 'a', None]]]
# Consistent?:
# False
# (((c&~d)<->a)&((a&c)->(~(d|a))))
# ['&', ['<->', ['&', 'c', ['~', 'd', None]], 'a'], ['->', ['&', 'a', 'c'], ['~', ['|', 'd', 'a'], None]]]
# Consistent?:
# True

f = propcalc.formula("((a->(b&~c))&(~(c|a))&(c<->(~a)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((c&~d)<->a)&((a&c)->(~(d|a))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
