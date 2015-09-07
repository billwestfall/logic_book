#run as
#sage: load("page048a.sage")
#a     | b     | value |
#------------------------
#False | False | False |
#False | True  | False |
#True  | False | False |
#True  | True  | True  |

#a      value
#False  True
#True   True

#a     | c     | value |
#------------------------
#False | False | False |
#False | True  | True  |
#True  | False | True  |
#True  | True  | True  |

#a      c      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#a      c      value
#False  False  True
#False  True   False
#True   False  False
#True   True   False

#b      value
#False  False
#True   True

#b      a      c      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   True
#True   True   False  True
#True   True   True   True

#a      c      value
#False  False  False
#False  True   True
#True   False  True
#True   True   False

#a      c      b      value
#False  False  False  False
#False  False  True   False
#False  True   False  False
#False  True   True   False
#True   False  False  False
#True   False  True   False
#True   True   False  False
#True   True   True   True

#a      b      c      value
#False  False  False  True
#False  False  True   True
#False  True   False  True
#False  True   True   True
#True   False  False  True
#True   False  True   True
#True   True   False  True
#True   True   True   False

#b      c      value
#False  False  True
#False  True   True
#True   False  True
#True   True   True

log = SymbolicLogic()
s = log.statement("a&b")
t = log.truthtable(s)
log.print_table(t)

f = propcalc.formula("a|~(a)")
print f.truthtable()

u = log.statement("a|c")
v = log.truthtable(u)
log.print_table(v)

g = propcalc.formula("~(a|c)")
print g.truthtable()

h = propcalc.formula("(~a)&(~c)")
print h.truthtable()

i = propcalc.formula("~(~b)")
print i.truthtable()

j = propcalc.formula("b&(a|c)")
print j.truthtable()

k = propcalc.formula("(a|c)&(~(a&c))")
print k.truthtable()

l = propcalc.formula("(a&c)&b")
print l.truthtable()

m = propcalc.formula("~a|(~b|~c)")
print m.truthtable()

n = propcalc.formula("(b|c)|~(b|c)")
print n.truthtable()
