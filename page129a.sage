# run as

#sage: load ("page129a.sage")
#((~(h&i))&(h|i))
#['&', ['~', ['&', 'h', 'i'], None], ['|', 'h', 'i']]
#Consistent?:
#True
#(~((f|~f)&g))
#['~', ['&', ['|', 'f', ['~', 'f', None]], 'g'], None]
#Consistent?:
#True
#((~(h&i)|j)&(~(j|~i)))
#['&', ['|', ['~', ['&', 'h', 'i'], None], 'j'], ['~', ['|', 'j', ['~', 'i', None]], None]]
#Consistent?:
#True
#((~(a|b)|c)&(~d|c)&(d))
#['&', ['&', ['|', ['~', ['|', 'a', 'b'], None], 'c'], ['|', ['~', 'd', None], 'c']], 'd']
#Consistent?:
#True
#((a&(b&c))&(~(a&(b&c))))
#['&', ['&', 'a', ['&', 'b', 'c']], ['~', ['&', 'a', ['&', 'b', 'c']], None]]
#Consistent?:
#False
#((a&(b&~c)&(~(a&(b&c)))))
#['&', ['&', 'a', ['&', 'b', ['~', 'c', None]]], ['~', ['&', 'a', ['&', 'b', 'c']], None]]
#Consistent?:
#True
#(((~c|(a&b)))&c&(~(a&b)))
#['&', ['&', ['|', ['~', 'c', None], ['&', 'a', 'b']], 'c'], ['~', ['&', 'a', 'b'], None]]
#Consistent?:
#False
#((~(~a|b))&(a|~b)&(~(~b&~a)))
#['&', ['&', ['~', ['|', ['~', 'a', None], 'b'], None], ['|', 'a', ['~', 'b', None]]], ['~', ['&', ['~', 'b', None], ['~', 'a', None]], None]]
#Consistent?:
#True
#((~f&~g)&(g|~i)&(i|~h))
#['&', ['&', ['&', ['~', 'f', None], ['~', 'g', None]], ['|', 'g', ['~', 'i', None]]], ['|', 'i', ['~', 'h', None]]]
#Consistent?:
#True
#((~(~a|~b))&(~(a&(~(b&c)))&(a|(b|c))))
#['&', ['~', ['|', ['~', 'a', None], ['~', 'b', None]], None], ['&', ['~', ['&', 'a', ['~', ['&', 'b', 'c'], None]], None], ['|', 'a', ['|', 'b', 'c']]]]
#Consistent?:
#True
#((f|~g)&((g|~i)&(i|~h)))
#['&', ['|', 'f', ['~', 'g', None]], ['&', ['|', 'g', ['~', 'i', None]], ['|', 'i', ['~', 'h', None]]]]
#Consistent?:
#True
# ((~(a&(~b&~c)))&(~a|~c)&(~(~b|~~c)))
# ['&', ['&', ['~', ['&', 'a', ['&', ['~', 'b', None], ['~', 'c', None]]], None], ['|', ['~', 'a', None], ['~', 'c', None]]], ['~', ['|', ['~', 'b', None], 'c'], None]]
# Consistent?:
# True
# ((a|(b|c))&(~(a|b))&(~(b&c))&(~(a&c)))
# ['&', ['&', ['&', ['|', 'a', ['|', 'b', 'c']], ['~', ['|', 'a', 'b'], None]], ['~', ['&', 'b', 'c'], None]], ['~', ['&', 'a', 'c'], None]]
# Consistent?:
# True
# (((h|~i)&(i|~g))&(~(h&g))&(h|((~i&~g))))
# ['&', ['&', ['&', ['|', 'h', ['~', 'i', None]], ['|', 'i', ['~', 'g', None]]], ['~', ['&', 'h', 'g'], None]], ['|', 'h', ['&', ['~', 'i', None], ['~', 'g', None]]]]
# Consistent?:
# True

import sage.logic.propcalc as propcalc
import sage.logic.logicparser as logicparser

f = propcalc.formula("((~(h&i))&(h|i))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(~((f|~f)&g))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(h&i)|j)&(~(j|~i)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a|b)|c)&(~d|c)&(d))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&(b&c))&(~(a&(b&c))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&(b&~c)&(~(a&(b&c)))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((~c|(a&b)))&c&(~(a&b)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(~a|b))&(a|~b)&(~(~b&~a)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~f&~g)&(g|~i)&(i|~h))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(~a|~b))&(~(a&(~(b&c)))&(a|(b|c))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((f|~g)&((g|~i)&(i|~h)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a&(~b&~c)))&(~a|~c)&(~(~b|~~c)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a|(b|c))&(~(a|b))&(~(b&c))&(~(a&c)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((h|~i)&(i|~g))&(~(h&g))&(h|((~i&~g))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
