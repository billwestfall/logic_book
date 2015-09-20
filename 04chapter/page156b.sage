# run as

# sage: load ("page156b.sage")
# m->(k->b) (~k->~m) (l&m) (b)
# Entailment?:
# True
# ((~j|k)->(l&m)) ~(~j|k) ~(l&m)
# Entailment?:
# True
# (a&(b|c)) (~c|h)&(h->~h) (a&b)
# Entailment?:
# True
# ((d<->~g)&g) ((g|((a->d)&a))->~d) (g->~d)
# Entailment?:
# True
# (m<->k)|(~(k&d)) (~m->~k) (~d->~(k&d)) (m)
# Entailment?:
# True
# ((j->t)->j) ((t->j)->t) (~j|~t)
# Entailment?:
# False
# b&(h|z) (~z->k) ((b<->z)->~z) (~k) (m&n)
# Entailment?:
# False
# (a|~(b&c)) (~b) (~(a|c)) (a)
# Entailment?:
# False
# (a&(b->c)) ((a&c)|(a&~b))
# Entailment?:
# True
# ((g<->h)|(~g<->h)) ((~g<->~h)|~(g<->h))
# Entailment?:
# True
# (a->~a) ((b->a)->b) ((a<->~b))
# Entailment?:
# True
# ((b|(a&~c))) ((c|a)<->b) (~b|a) ~(a|c)
# Entailment?:
# False

f, g, h, i = propcalc.get_formulas("m->(k->b)", "(~k->~m)", "(l&m)", "(b)")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g, h = propcalc.get_formulas("((~j|k)->(l&m))", "~(~j|k)", "~(l&m)")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("(a&(b|c))", "(~c|h)&(h->~h)", "(a&b)")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("((d<->~g)&g)", "((g|((a->d)&a))->~d)", "(g->~d)")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h, i = propcalc.get_formulas("(m<->k)|(~(k&d))", "(~m->~k)", "(~d->~(k&d))", "(m)")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g, h = propcalc.get_formulas("((j->t)->j)", "((t->j)->t)", "(~j|~t)")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h, i, j = propcalc.get_formulas("b&(h|z)", "(~z->k)", "((b<->z)->~z)", "(~k)", "(m&n)")
print f, g, h, i, j
print ("Entailment?:")
print propcalc.consistent(f, g, h, i, j)

f, g, h, i = propcalc.get_formulas("(a|~(b&c))", "(~b)", "(~(a|c))", "(a)")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g = propcalc.get_formulas("(a&(b->c))", "((a&c)|(a&~b))")
print f, g
print ("Entailment?:")
print propcalc.consistent(f, g)

f, g = propcalc.get_formulas("((g<->h)|(~g<->h))", "((~g<->~h)|~(g<->h))")
print f, g
print ("Entailment?:")
print propcalc.consistent(f, g)

f, g, h = propcalc.get_formulas("(a->~a)", "((b->a)->b)", "((a<->~b))")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h, i = propcalc.get_formulas("((b|(a&~c)))", "((c|a)<->b)", "(~b|a)", "~(a|c)")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)
