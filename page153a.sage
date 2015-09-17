# run as

# sage: load ("page153a.sage")
# a<->b ~b->~c d|g c&a
# Entailment?:
# True
# b&k n->~k k|~k (b->n)
# Entailment?:
# False
# (~j)|s s->e j->e
# Entailment?:
# True
# (((~b)|(~h))->m) (k&(~m)) b
# Entailment?:
# True
# (~w)&(~l) (j->~w)<->~l h j&h
# Entailment?:
# True

f, g, h, i = propcalc.get_formulas("a<->b", "~b->~c", "d|g", "c&a")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g, h, i = propcalc.get_formulas("b&k", "n->~k", "k|~k", "(b->n)")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)

f, g, h = propcalc.get_formulas("(~j)|s", "s->e", "j->e")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h = propcalc.get_formulas("(((~b)|(~h))->m)", "(k&(~m))", "b")
print f, g, h
print ("Entailment?:")
print propcalc.consistent(f, g, h)

f, g, h, i = propcalc.get_formulas("(~w)&(~l)", "(j->~w)<->~l", "h", "j&h")
print f, g, h, i
print ("Entailment?:")
print propcalc.consistent(f, g, h, i)
