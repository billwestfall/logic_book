# run as

#sage: load ("page128a.sage")
#(a&(~(b|a)))
#['&', 'a', ['~', ['|', 'b', 'a'], None]]
#Consistent?:
#False
#(a&(~(b&a)))
#['&', 'a', ['~', ['&', 'b', 'a'], None]]
#Consistent?:
#True
#(~(a|b))&(a|~b)
#['&', ['~', ['|', 'a', 'b'], None], ['|', 'a', ['~', 'b', None]]]
#Consistent?:
#True
#((~a)&(~(a&b))&b)
#['&', ['&', ['~', 'a', None], ['~', ['&', 'a', 'b'], None]], 'b']
#Consistent?:
#True
#((a|b)&(a|~b))
#['&', ['|', 'a', 'b'], ['|', 'a', ['~', 'b', None]]]
#Consistent?:
#True
#(((j&~k)&i)&(~(i|k)))
#['&', ['&', ['&', 'j', ['~', 'k', None]], 'i'], ['~', ['|', 'i', 'k'], None]]
#Consistent?:
#False
#(((j|~k)&i)&(~(i|k)))
#['&', ['&', ['|', 'j', ['~', 'k', None]], 'i'], ['~', ['|', 'i', 'k'], None]]
#Consistent?:
#False
#((h&~i)&(i|~h))
#['&', ['&', 'h', ['~', 'i', None]], ['|', 'i', ['~', 'h', None]]]
#Consistent?:
#False
#(((h|~i)&i)&(~(h&i)))
#['&', ['&', ['|', 'h', ['~', 'i', None]], 'i'], ['~', ['&', 'h', 'i'], None]]
#Consistent?:
#False
#(((a&b)|(a&c))&(~(a&b)))
#['&', ['|', ['&', 'a', 'b'], ['&', 'a', 'c']], ['~', ['&', 'a', 'b'], None]]
#Consistent?:
#True
#(~(a&b)&(~(~c|b))&(~(a&c)))
#['&', ['&', ['~', ['&', 'a', 'b'], None], ['~', ['|', ['~', 'c', None], 'b'], None]], ['~', ['&', 'a', 'c'], None]]
#Consistent?:
#True
#(((a&b)|(a&c))&(~(a|b)))
#['&', ['|', ['&', 'a', 'b'], ['&', 'a', 'c']], ['~', ['|', 'a', 'b'], None]]
#Consistent?:
#False
#(((a|b)&(a|c))&(~c&~a))
#['&', ['&', ['|', 'a', 'b'], ['|', 'a', 'c']], ['&', ['~', 'c', None], ['~', 'a', None]]]
#Consistent?:
#False
#(((a|b)&(a|c))&(c&~a)&(~b|~a))
#['&', ['&', ['&', ['|', 'a', 'b'], ['|', 'a', 'c']], ['&', 'c', ['~', 'a', None]]], ['|', ['~', 'b', None], ['~', 'a', None]]]
#Consistent?:
#True
#(((h&~i)|(i|~h))&(j|i)&(~j))
#['&', ['&', ['|', ['&', 'h', ['~', 'i', None]], ['|', 'i', ['~', 'h', None]]], ['|', 'j', 'i']], ['~', 'j', None]]
#Consistent?:
#True

import sage.logic.propcalc as propcalc
import sage.logic.logicparser as logicparser

f = propcalc.formula("(a&(~(b|a)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(a&(~(b&a)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(~(a|b))&(a|~b)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~a)&(~(a&b))&b)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a|b)&(a|~b))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((j&~k)&i)&(~(i|k)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((j|~k)&i)&(~(i|k)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((h&~i)&(i|~h))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((h|~i)&i)&(~(h&i)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a&b)|(a&c))&(~(a&b)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(~(a&b)&(~(~c|b))&(~(a&c)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a&b)|(a&c))&(~(a|b)))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a|b)&(a|c))&(~c&~a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((a|b)&(a|c))&(c&~a)&(~b|~a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((h&~i)|(i|~h))&(j|i)&(~j))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
