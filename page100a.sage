# run as

#sage: load ("page100a.sage")
#(a->b, b->c, a->c)
#True
#(b<->(j&k), ~j, ~b->b)
#False
#(~(j|(h->l)), l<->(~j|~h), h<->(j|l))
#False
#((a&b)&c, c|(b|a), a<->(b->c))
#True
#((j->j)->h, ~j, ~h)
#False
#(u|(w&h), w<->(u|h), h|~h)
#True
#(a, b, c)
#True
#(~(a&b), ~(b&c), ~(a&c), a|(b&c))
#True
#((a&b)|c->b, ~a, ~b)
#True
#(a->(b->(c->a)), b->~a)
#True

f, g, h = propcalc.get_formulas("a->b", "b->c", "a->c")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("b<->(j&k)", "~j", "~b->b")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("~(j|(h->l))", "l<->(~j|~h)", "h<->(j|l)")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("(a&b)&c", "c|(b|a)", "a<->(b->c)")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("(j->j)->h", "~j", "~h")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("u|(w&h)", "w<->(u|h)", "h|~h")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("a", "b", "c")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g, h, i = propcalc.get_formulas("~(a&b)", "~(b&c)", "~(a&c)", "a|(b&c)")
print (f, g, h, i)
print propcalc.consistent(f, g, h, i)

f, g, h = propcalc.get_formulas("(a&b)|c->b", "~a", "~b")
print (f, g, h)
print propcalc.consistent(f, g, h)

f, g = propcalc.get_formulas("a->(b->(c->a))", "b->~a")
print (f, g)
print propcalc.consistent(f, g)
