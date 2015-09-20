#run as
#sage: load("page041a.sage")
#a      b      value
#False  False  False
#False  True   True
#True   False  True
#True   True   False

f = propcalc.formula("(a|b)&(~(a&b))")
print f.truthtable()
