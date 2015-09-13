# run as

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

f = propcalc.formula("(a<->~a)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&~b)<->c)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((a&~b)&c)<->(~a|~c)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)

f = propcalc.formula("((~b&c)&(a|b))<->(a&c)")
print f
print f.tree()
print ("Consistent?:")
print propcalc.consistent(f)
