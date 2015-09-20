# run as

#sage: load ("page118a.sage")
#(a&~a)
#['&', 'a', ['~', 'a', None]]
#Consistent?:
#False
#((a&~b)&c)
#['&', ['&', 'a', ['~', 'b', None]], 'c']
#Consistent?:
#True
#((a&~b)&c)&(~a|~c)
#['&', ['&', ['&', 'a', ['~', 'b', None]], 'c'], ['|', ['~', 'a', None], ['~', 'c', None]]]
#Consistent?:
#False
#((~b&c)&(a|b))&(a&c)
#['&', ['&', ['&', ['~', 'b', None], 'c'], ['|', 'a', 'b']], ['&', 'a', 'c']]
#Consistent?:
#True
#(p&q)
#['&', 'p', 'q']
#Consistent?:
#True
#(p|q)
#['|', 'p', 'q']
#Consistent?:
#True
#~(~p)
#['~', ['~', 'p', None], None]
#Consistent?:
#True
#~(p&q)
#['~', ['&', 'p', 'q'], None]
#Consistent?:
#True
#~(p|q)
#['~', ['|', 'p', 'q'], None]
#Consistent?:
#True
#((a&~b)&~(b|~a))&((b&a)|(b&~a))
#['&', ['&', ['&', 'a', ['~', 'b', None]], ['~', ['|', 'b', ['~', 'a', None]], None]], ['|', ['&', 'b', 'a'], ['&', 'b', ['~', 'a', None]]]]
#Consistent?:
#False
#(((g|(h|i))&(~(g|h)&(~(h|i)&(~(i|g))))))
#['&', ['|', 'g', ['|', 'h', 'i']], ['&', ['~', ['|', 'g', 'h'], None], ['&', ['~', ['|', 'h', 'i'], None], ['~', ['|', 'i', 'g'], None]]]]
#Consistent?:
#False
#(((~(~s|t)&(~(t|r))&(t&~r)|(~(r&s)&~(~(r|(s&~t)))))))
#['|', ['&', ['&', ['~', ['|', ['~', 's', None], 't'], None], ['~', ['|', 't', 'r'], None]], ['&', 't', ['~', 'r', None]]], ['&', ['~', ['&', 'r', 's'], None], ['~', ['~', ['|', 'r', ['&', 's', ['~', 't', None]]], None], None]]]
#Consistent?:
#True
#((~(h&g)&(~(h&i))&(g|i)&(~(h|~i))))
#['&', ['&', ['&', ['~', ['&', 'h', 'g'], None], ['~', ['&', 'h', 'i'], None]], ['|', 'g', 'i']], ['~', ['|', 'h', ['~', 'i', None]], None]]
#Consistent?:
#True
#((~(~b|~c)&((b&(~c|~d)))&(~(c&~d))))
#['&', ['&', ['~', ['|', ['~', 'b', None], ['~', 'c', None]], None], ['&', 'b', ['|', ['~', 'c', None], ['~', 'd', None]]]], ['~', ['&', 'c', ['~', 'd', None]], None]]
#Consistent?:
#False
#((~(a|b)|~c)&(c&(~(a&b)))&((a|c)&((a|b))&a))
#['&', ['&', ['|', ['~', ['|', 'a', 'b'], None], ['~', 'c', None]], ['&', 'c', ['~', ['&', 'a', 'b'], None]]], ['&', ['&', ['|', 'a', 'c'], ['|', 'a', 'b']], 'a']]
#Consistent?:
#False

import sage.logic.propcalc as propcalc
import sage.logic.logicparser as logicparser

#f = propcalc.formula("((a|b)&~~c)")
#g = "a<->(~(c))"
#h = "~b"
#print (f, g, h)
#print logicparser.get_trees(f, g, h)

#f = propcalc.formula("(a&~b)")
#g = "c"
#print (f, g)
#print logicparser.get_trees(f, g)

#f = propcalc.formula("(a&~b)")
#g = "c"
#h = propcalc.formula("(~a|~c)")
#print (f, g, h)
#print logicparser.get_trees(f, g, h)

f = propcalc.formula("(a&~a)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&~b)&c)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&~b)&c)&(~a|~c)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~b&c)&(a|b))&(a&c)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(p&q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(p|q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("~(~p)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("~(p&q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("~(p|q)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&~b)&~(b|~a))&((b&a)|(b&~a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((g|(h|i))&(~(g|h)&(~(h|i)&(~(i|g))))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("(((~(~s|t)&(~(t|r))&(t&~r)|(~(r&s)&~(~(r|(s&~t)))))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(h&g)&(~(h&i))&(g|i)&(~(h|~i))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(~b|~c)&((b&(~c|~d)))&(~(c&~d))))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~(a|b)|~c)&(c&(~(a&b)))&((a|c)&((a|b))&a))")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
