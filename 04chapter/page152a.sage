# run as

# sage: load ("page152a.sage")
# ((~(z|k))<->((~z&~k)))
# z      k      value
# False  False  True
# False  True   True
# True   False  True
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# ~(z|k)
# ((~z&~k))
# Equivalent?:
# True
# ((~(z|k))<->((~z|~k)))
# z      k      value
# False  False  True
# False  True   False
# True   False  False
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ~(z|k)
# ((~z|~k))
# Equivalent?:
# False
# ((b&c)->r)<->((b->r)&(c->r))
# b      c      r      value
# False  False  False  True
# False  False  True   True
# False  True   False  False
# False  True   True   True
# True   False  False  False
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((b&c)->r)
# ((b->r)&(c->r))
# Equivalent?:
# False
# ((b|c)->r)<->((b->r)&(c->r))
# b      c      r      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# ((b|c)->r)
# ((b->r)&(c->r))
# Equivalent?:
# True
# ((a&(b|c))<->((a&b)|(a&c)))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# (a&(b|c))
# ((a&b)|(a&c))
# Equivalent?:
# True
# ((a|(b&c))<->((a&b)|(a&c)))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   False
# True   False  False  False
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# (a|(b&c))
# ((a|b)&(a|c))
# Equivalent?:
# True
# (d->(l->m))<->((d->l)->m)
# d      l      m      value
# False  False  False  False
# False  False  True   True
# False  True   False  False
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# (d->(l->m))
# ((d->l)->m)
# Equivalent?:
# False
# (j->(k<->l))<->((j->k)<->(j->l))
# j      k      l      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# (j->(k<->l))
# ((j->k)<->(j->l))
# Equivalent?:
# True
# (a->a)<->(b->b)
# a      b      value
# False  False  True
# False  True   True
# True   False  True
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# (a->a)
# (b->b)
# Equivalent?:
# True
# (a&~a)<->(b&~b)
# a      b      value
# False  False  True
# False  True   True
# True   False  True
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# (a&~a)
# (b&~b)
# Equivalent?:
# True
# (a&~b)<->(~(a)|b)
# a      b      value
# False  False  False
# False  True   False
# True   False  False
# True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# (a&~b)
# (~(a)|b)
# Equivalent?:
# False
# (~(a|b))<->(~(a&b))
# a      b      value
# False  False  True
# False  True   False
# True   False  False
# True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# (~(a|b))
# (~(a&b))
# Equivalent?:
# False
# (~(a<->b))<->(~a<->~b)
# a      b      value
# False  False  False
# False  True   False
# True   False  False
# True   True   False
#
# Satisfiable?:
# False
# Tautology?:
# False
# Contradiction?:
# True
# Consistent?:
# False
# (~(a<->b))
# ((~a<->~b))
# Equivalent?:
# False
# ((a->(b->c)))<->((a->b)->c)
# a      b      c      value
# False  False  False  False
# False  False  True   True
# False  True   False  False
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((a&(b|c)))
# ((a&b)|(a&c))
# Equivalent?:
# True
# ((a&(b|c)))<->((a&b)|(a&c))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  True
# True   False  True   True
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# True
# Contradiction?:
# False
# Consistent?:
# True
# ((a&(b|c)))
# ((a&b)|(a&c))
# Equivalent?:
# True
# ((a->(b->c)))<->((a->(b&c)))
# a      b      c      value
# False  False  False  True
# False  False  True   True
# False  True   False  True
# False  True   True   True
# True   False  False  False
# True   False  True   False
# True   True   False  True
# True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# ((a&(b|c)))
# ((a&b)|(a&c))
# Equivalent?:
# True
# sage:

f = propcalc.formula("((~(z|k))<->((~z&~k)))")
g = propcalc.formula(("~(z|k)"))
h = propcalc.formula("((~z&~k))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((~(z|k))<->((~z|~k)))")
g = propcalc.formula(("~(z|k)"))
h = propcalc.formula("((~z|~k))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((b&c)->r)<->((b->r)&(c->r))")
g = propcalc.formula("((b&c)->r)")
h = propcalc.formula("((b->r)&(c->r))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((b|c)->r)<->((b->r)&(c->r))")
g = propcalc.formula("((b|c)->r)")
h = propcalc.formula("((b->r)&(c->r))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((a&(b|c))<->((a&b)|(a&c)))")
g = propcalc.formula("(a&(b|c))")
h = propcalc.formula("((a&b)|(a&c))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((a|(b&c))<->((a&b)|(a&c)))")
g = propcalc.formula("(a|(b&c))")
h = propcalc.formula("((a|b)&(a|c))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(d->(l->m))<->((d->l)->m)")
g = propcalc.formula("(d->(l->m))")
h = propcalc.formula("((d->l)->m)")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(j->(k<->l))<->((j->k)<->(j->l))")
g = propcalc.formula("(j->(k<->l))")
h = propcalc.formula("((j->k)<->(j->l))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(a->a)<->(b->b)")
g = propcalc.formula("(a->a)")
h = propcalc.formula("(b->b)")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(a&~a)<->(b&~b)")
g = propcalc.formula("(a&~a)")
h = propcalc.formula("(b&~b)")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(a&~b)<->(~(a)|b)")
g = propcalc.formula("(a&~b)")
h = propcalc.formula("(~(a)|b)")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(~(a|b))<->(~(a&b))")
g = propcalc.formula("(~(a|b))")
h = propcalc.formula("(~(a&b))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("(~(a<->b))<->(~a<->~b)")
g = propcalc.formula("(~(a<->b))")
h = propcalc.formula("((~a<->~b))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((a->(b->c)))<->((a->b)->c)")
g = propcalc.formula("((a&(b|c)))")
h = propcalc.formula("((a&b)|(a&c))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((a&(b|c)))<->((a&b)|(a&c))")
g = propcalc.formula("((a&(b|c)))")
h = propcalc.formula("((a&b)|(a&c))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h

f = propcalc.formula("((a->(b->c)))<->((a->(b&c)))")
g = propcalc.formula("((a&(b|c)))")
h = propcalc.formula("((a&b)|(a&c))")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
print g
print h
print ("Equivalent?:")
print g == h
