# run as

# sage: load ("page156a.sage")
# a->(b&c) c<->b ~c ~a
# Entailment?:
# True
# k->h h->l l->m k->m
# Entailment?:
# True
# ~(a<->b) ~a ~b c&~c
# Entailment?:
# False
# ~(~a&~b) a&b
# Entailment?:
# True
# a&(b->c) (a&c)|(a&b)
# Entailment?:
# True
# ((c|d)&h)->a d h->a
# Entailment?:
# True
# ((g<->h)|(~g<->h)) ((~g<->~h)|(~(g<->h)))
# Entailment?:
# True
# ((j|m)->(~(j&m))) (m<->(m->j)) (m->j)
# Entailment?:
# False

f, g, h, i = propcalc.get_formulas("a->(b&c)", "c<->b", "~c", "~a")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g, h, i = propcalc.get_formulas("k->h", "h->l", "l->m", "k->m")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g, h, i = propcalc.get_formulas("~(a<->b)", "~a", "~b", "c&~c")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g = propcalc.get_formulas("~(~a&~b)", "a&b")
print f, g
print ("Entailment?:")
print propcalc.consistent(f, g)

f, g = propcalc.get_formulas("a&(b->c)", "(a&c)|(a&b)")
print f, g
print ("Entailment?:")
print propcalc.consistent(f, g)

f, g, h = propcalc.get_formulas("((c|d)&h)->a", "d", "h->a")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g = propcalc.get_formulas("((g<->h)|(~g<->h))", "((~g<->~h)|(~(g<->h)))")
print f, g
print ("Entailment?:")
print propcalc.consistent(f, g)

f, g, h = propcalc.get_formulas("((j|m)->(~(j&m)))", "(m<->(m->j))", "(m->j)")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)
