# run as

#sage: load ("page100b.sage")
#(b->(d->e), ~d&b)
#True
#h<->(~h->h)
#h      value
#False  True
#True   True

#(f->(j|k), f<->~j)
#True
#(~(~c|~b)&a, a<->~c)
#False
#((a->b)<->(~b|b), a)
#True
#(h->j, j->k, k->~h)
#True

f, g = propcalc.get_formulas("b->(d->e)", "~d&b")
print (f, g)
print propcalc.consistent(f, g)

f = propcalc.formula("h<->(~h->h)")
print (f)
print f.truthtable()

f, g = propcalc.get_formulas("f->(j|k)", "f<->~j")
print (f, g)
print propcalc.consistent(f, g)

f, g = propcalc.get_formulas("~(~c|~b)&a", "a<->~c")
print (f, g)
print propcalc.consistent(f, g)

f, g = propcalc.get_formulas("(a->b)<->(~b|b)", "a")
print (f, g)
print propcalc.consistent(f, g)

f, g, h = propcalc.get_formulas("h->j", "j->k", "k->~h")
print (f, g, h)
print propcalc.consistent(f, g, h)
